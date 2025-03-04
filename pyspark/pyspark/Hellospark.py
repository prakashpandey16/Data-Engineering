from pyspark.sql import SparkSession

if __name__ == "__main__":
    # Initialize Spark session
    spark = SparkSession.builder \
        .appName("Hello Spark") \
        .master("local[2]") \
        .getOrCreate()

    # Define data as a list of tuples
    data_list = [("Prakash", 19),
                 ("Rahul", 18),
                 ("Ajay", 21),
                 ("Piyush", 20)]  # Fixed missing parentheses

    # Create DataFrame from list
    df = spark.createDataFrame(data_list).toDF("Name", "Age")

    # Display DataFrame
    df.show()

