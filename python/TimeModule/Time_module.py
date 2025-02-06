import time  # Importing the time module for working with time-related functions

# print(time.time())  # Uncomment to print the current time in seconds since the epoch (January 1, 1970)

# Pausing execution for 10 seconds
# print("Start")
# time.sleep(10)  # Pauses the program execution for 10 seconds
# print("End")

# Getting the local time as a struct_time object
t = time.localtime()  # Fetches the current local time
print(t)  # Prints the local time in a structured format (struct_time)

# Formatting local time into a readable string
print(time.strftime("%Y-%m-%d %H:%M:%S"))  # Prints the current date and time in "YYYY-MM-DD HH:MM:SS" format

# Storing formatted time in a variable and printing it
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())  
print(formatted_time)  # Outputs formatted local time as a string

# Measuring execution time of a code block
start = time.perf_counter()  # Records the high-precision start time
# time.sleep(1)  # Uncomment this to simulate a delay of 1 second
end = time.perf_counter()  # Records the end time
print(f"Execution Time: {end - start:.2f} seconds")  # Prints the execution duration in seconds

# Getting CPU execution time
print(time.process_time())  # Prints the CPU time consumed by the program

# Getting time in tuple format
t = time.localtime()  # Fetches local time
print(t.tm_year, t.tm_mon, t.tm_mday)  # Prints year, month, and day

# Converting local time to epoch time
t = time.localtime()  # Gets the current local time
epoch_time = time.mktime(t)  # Converts struct_time to seconds since the epoch
print(epoch_time)  # Prints the epoch time

# return current utc time
import time  # Importing the time module

# Getting the current UTC time as a struct_time object
t = time.gmtime()  
print(t)  # Prints the UTC time in a structured format (struct_time)

# Formatting and printing the UTC time in a readable format
print(time.strftime("%Y-%m-%d %H:%M:%S", t))  
# Example output: "2025-02-06 12:45:30" (YYYY-MM-DD HH:MM:SS format)
