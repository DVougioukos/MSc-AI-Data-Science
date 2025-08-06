# Importing some packages

import json
import asyncio
import random
from aiokafka import AIOKafkaProducer
from faker import Faker
from datetime import datetime
import pandas as pd


# Setting up the Faker object
faker = Faker()

# Setting up the kafka stream topic
stream_topic = "movie_reviews"

# Reading the 'movies.csv' file
movies_df = pd.read_csv("../data/movies.csv", header=None)

# Coverting the dataframe to list
movies = movies_df[0].tolist()

# Generating 10 fake names
names = [faker.name() for _ in range(10)]

# Adding my own name
names.append("Dimitris Vougioukos")


def serializer(value):
    """
    This function is used to serialize a dictionary to a JSON-formatted string,
    which is required for sending data to Kafka.

    :param value: A dictionary representing a message
    :return: The serialized JSON
    """

    return json.dumps(value).encode()


async def produce():
    """
    This function illustrates the Kafka stream producer
    """

    # Setting up the kafka producer
    producer = AIOKafkaProducer(
        bootstrap_servers="localhost:29092",
        value_serializer=serializer,
        compression_type="gzip",
    )

    # Starting
    await producer.start()

    # Setting a movie index
    movie_index = 0

    try:

        # Loop until stopped manually
        while True:

            # Checking
            if movie_index == len(movies):

                # Updating
                movie_index = 0

            # Iterating over the names
            for name in names:

                # Retrieving a movie
                movie = movies[movie_index]

                # Generating a random rating
                rating = random.randint(1, 10)

                # Getting the current time
                current_time = datetime.now().isoformat()

                # Setting the current stream data
                stream_data = {
                    "reviewer": name,
                    "movie": movie,
                    "time": current_time,
                    "rating": rating,
                }

                print(f"Sending: {stream_data}")

                # Sending the data
                await producer.send(stream_topic, stream_data)

                # Waiting a few seconds before sending next item/message
                await asyncio.sleep(5)

            # Updating
            movie_index += 1

    finally:

        # Terminating the stream
        await producer.stop()


# Running the kafka stream process
loop = asyncio.get_event_loop()
loop.run_until_complete(produce())