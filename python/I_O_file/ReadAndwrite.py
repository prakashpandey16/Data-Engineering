# Open the file 'demo.txt' in read and write mode ('r+').
# 'r+' allows both reading and writing to the file.
# If the file does not exist, an error will be raised.
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "r+")

# Read the entire content of the file.
data = f.read()  # This reads all the existing content from the file and stores it in the variable 'data'.

# Print the content of the file.
print(data)  # Display the content that was read from the file.

# Write new data to the file.
# The write operation starts at the current file pointer position, which is now at the end of the file after reading.
f.write("Hey this me prakash pandey")  # This appends the given string at the end of the file.

# Attempt to read again after writing.
# Since the file pointer is already at the end after writing, this will likely read nothing.
data = f.read()  # This will attempt to read from the current position (end of the file).

# Print the content read after writing.
print(data)  # This is expected to print an empty string, as the file pointer is already at the end.

# Close the file to save changes and release resources.
f.close()
