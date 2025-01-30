# Open the file 'demo.txt' in append and read mode ('a+').
# 'a+' allows both appending new content to the file and reading its content.
# If the file does not exist, it will be created.
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "a+")

# Append new content to the file.
# This writes the string "Hey this is me prakash pandey" at the end of the file.
# The file pointer moves to the end after writing.
f.write("Hey this is me prakash pandey")

# Reset the file pointer to the beginning of the file to read the entire content.
# This ensures that all content, including the newly appended one, can be read.
f.seek(0)

# Read the content of the file.
data = f.read()  # Reads the entire content of the file starting from the beginning.

# Print the content of the file.
# This will display all the content present in the file, including the new addition.
print(data)

# Close the file to save changes and release system resources.
f.close()



