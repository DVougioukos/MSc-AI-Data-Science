package mapreduce.carsales;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.DecimalFormat;
import java.io.IOException;
import java.text.ParseException;

public class CarSalesAggregate {

    public static class AggregateMapper extends Mapper<LongWritable, Text, Text, Text> {
        
        // Setting the date formatters
        private final SimpleDateFormat inputDateFormat = new SimpleDateFormat("EEE MMM dd yyyy HH:mm:ss 'GMT'Z (z)");
        private final SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy-MM");

        @Override
        public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {

            // Converting the value to string
            String line = value.toString();

            // Splitting the values of the line using the comma delimiter
            String[] lineValues = line.split(",", -1);
            
            // Checking if at least one of the required fields is empty or not
            if (lineValues[0].contains("year") || lineValues[1].isEmpty() || lineValues[2].isEmpty() || lineValues[3].isEmpty() || lineValues[12].isEmpty() || lineValues[13].isEmpty() || lineValues[14].isEmpty() || lineValues[15].isEmpty()) {
                
                // Skipping the line
                return;
                
            } else {
                
                try {
                    
                    // Extracting the value of the 'make' column
                    String make = lineValues[1].trim();

                    // Extracting the value of the 'model' column
                    String model = lineValues[2].trim();

                    // Extracting the value of the 'trim' column
                    String trim = lineValues[3].trim();

                    // Extracting the seller
                    String seller = lineValues[12].trim();
                    
                    // Extracting the mmr value and converting to double
                    double mmr = Double.parseDouble(lineValues[13].trim());
                    
                    // Extracting the selling price and converting to double
                    double sellingPrice = Double.parseDouble(lineValues[14].trim());
                    
                    // Extracting the sale date
                    String saleDateString = lineValues[15].trim();

                    // Converting and reformating the sale date
                    Date parsedSalesDate = inputDateFormat.parse(saleDateString);
                    String saleDateFinal = outputDateFormat.format(parsedSalesDate);
                    
                    // Getting the car name
                    String car = make + " " + model + " " + trim;

                    // Computing the difference
                    double priceDifference = sellingPrice - mmr;

                    // Writting the output as (seller:year-month, car:price difference)
                    context.write(new Text(seller + ":" + saleDateFinal), new Text(car + "," + priceDifference));   

                } catch (Exception e) {

                    // Showing the exception
                    System.err.println("Exception: " + e.getMessage());
                }
        
            }
        }
    }

    public static class AggregateReducer extends Reducer<Text, Text, Text, Text> {
        
        // Setting a decimal formatter
        private final DecimalFormat decimalFormatter = new DecimalFormat("#.####");
        
        @Override
        public void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
            
            // Initializing a variable to keep the max price difference 
            double maxPriceDifference = Double.NEGATIVE_INFINITY;
            
            // Initialize a variable to keep the car with the max price difference
            String carWithMaxPriceDifference = "";

            // Initializing a variable to keep the summary of the price differences
            double priceDifferenceSum = 0;

            // Initializing a variable to keep the total amount of price differences
            int priceDifferenceCount = 0;

            try {

                // Iterating over all (car:price difference) for a (seller:year-month)
                for (Text value : values) {
                    
                    // Getting the final values by splitting the initial value
                    String[] elements = value.toString().split(",");

                    // Getting the car
                    String car = elements[0];

                    // Getting the price difference
                    double priceDifference = Double.parseDouble(elements[1]);
                    
                    // Checking for larger price difference
                    if (priceDifference > maxPriceDifference) {
                        
                        // Updating
                        maxPriceDifference = priceDifference;
                        carWithMaxPriceDifference = car;

                    }
                    
                    // Updating the sum
                    priceDifferenceSum += priceDifference;
                    
                    // Updating the count
                    priceDifferenceCount++;

                }
                
                // Computing the average of the price differences
                double averagePriceDifference = priceDifferenceSum / priceDifferenceCount;

                // Writting the final output
                context.write(key, new Text(carWithMaxPriceDifference + ": " + maxPriceDifference + ", " + "avg: " + decimalFormatter.format(averagePriceDifference)));

            } catch (Exception e){

                
                // Showing the exception
                System.err.println("Exception: " + e.getMessage());

            }
        }
    }

}