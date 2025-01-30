# Open the file 'demo.txt' in write and read mode ('w+').
# 'w+' allows both writing and reading to/from the file.
# If the file already exists, it will be truncated (emptied) before writing.
# If the file does not exist, it will be created.
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "w+")

# Write new content to the file.
# This overwrites any existing content in the file with the specified string.
f.write("Hey this is me prakash pandey")

# Attempt to read the file content.
# Since the file pointer is currently at the end of the file (after writing), this will likely read nothing.
data = f.read()  # This tries to read from the current file pointer position.

# Print the content read after writing.
# This is expected to print an empty string because the file pointer is at the end.
print(data)

# Close the file to save changes and release resources.
f.close()
