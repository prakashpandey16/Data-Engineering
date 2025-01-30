import time

# Get the current local time
current_time = time.localtime()

# Format the local time as a string
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print(formatted_time)
