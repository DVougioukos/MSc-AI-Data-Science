# Importing some packages

import sys
from pyspark.sql import SparkSession
from pyspark.sql.functions import from_json, col, to_timestamp, date_format
from pyspark.sql.types import StructType, StructField, StringType, IntegerType


# Setting the processing interval (default is 30 seconds)
write_interval = int(sys.argv[1]) if len(sys.argv) > 1 else 30

# Setting up the Spark Session
spark = (
    SparkSession.builder.appName("MovieReviews")
    .config("spark.cassandra.connection.host", "127.0.0.1")
    .config(
        "spark.jars.packages",
        "org.apache.spark:spark-sql-kafka-0-10_2.12:3.5.0,"
        "com.datastax.spark:spark-cassandra-connector_2.12:3.0.0",
    )
    .getOrCreate()
)
spark.sparkContext.setLogLevel("ERROR")

# Setting up the kafka message schema
kafkaMessageSchema = StructType(
    [
        StructField("reviewer", StringType(), False),
        StructField("movie", StringType(), False),
        StructField("time", StringType(), False),
        StructField("rating", IntegerType(), False),
    ]
)

# Reading the netflix.csv file
movies_info = (
    spark.read.csv("../data/netflix.csv", header=True, inferSchema=True)
    .withColumnRenamed("title", "movie")
    .withColumnRenamed("rating", "maturity_rating")
    .cache()
)

# Reading the kafka stream (movies review)
kafka_stream = (
    spark.readStream.format("kafka")
    .option("kafka.bootstrap.servers", "localhost:29092")
    .option("subscribe", "movie_reviews")
    .option("startingOffsets", "latest")
    .load()
)

# Parsing the stream
movies_reviews = (
    kafka_stream.selectExpr("CAST(value AS STRING)")
    .select(from_json(col("value"), kafkaMessageSchema).alias("data"))
    .select("data.*")
)

# Converting the time to timestamp
movies_reviews = movies_reviews.withColumn("time", to_timestamp("time"))

# Getting the hour of the reviews
movies_reviews = movies_reviews.withColumn(
    "hour", date_format("time", "yyyy-MM-dd HH:00")
)

# Getting additional movie info
movies_reviews = movies_reviews.join(movies_info, on="movie", how="left")

# Ordering
movies_reviews = movies_reviews.select(
    "reviewer",
    "hour",
    "time",
    "movie",
    "country",
    "director",
    "duration",
    "maturity_rating",
    "rating",
    "release_year",
    "show_id",
)


def write_to_cassandra(batch_df, _):
    """
    This function is used to write to Cassandra db.

    :param batch_df: A Spark DataFrame
    """

    # Storing the data
    batch_df.write.format("org.apache.spark.sql.cassandra").mode("append").options(
        table="movie_reviews", keyspace="movies"
    ).save()


# Starting the stream processing
query = (
    movies_reviews.writeStream.foreachBatch(write_to_cassandra)
    .outputMode("append")
    .trigger(processingTime=f"{write_interval} seconds")
    .start()
).awaitTermination()