package mapreduce.carsales;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class Driver {

    public static void main(String[] args) throws Exception {
        
        // Setting the Hadoop home directory
        System.setProperty("hadoop.home.dir", "/");

        // Setting up a Hadoop configuration
        Configuration configuration = new Configuration();
        
        // Setting up a Haddop job
        Job job = Job.getInstance(configuration, "Car Price Difference");

        // Setting the main job parameters
        job.setJarByClass(CarSalesAggregate.class);
        job.setMapperClass(CarSalesAggregate.AggregateMapper.class);
        job.setReducerClass(CarSalesAggregate.AggregateReducer.class);

        // Setting the output data types
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(Text.class);

        // Setting the input and output paths
        FileInputFormat.addInputPath(job, new Path("/user/hdfs/input/car_prices.csv"));
        FileOutputFormat.setOutputPath(job, new Path("/user/hdfs/output/"));
        
        // Exit
        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}