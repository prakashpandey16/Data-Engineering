# Open the file 'pratice.txt' in read mode ('r') using the 'with' statement.
# This ensures the file is properly closed after reading.
with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt", "r") as f:
    # Read the entire content of the file and store it in the 'data' variable.
    data = f.read()

# Replace all occurrences of the string "java" with "Python" in the file content.
# Note: This is case-sensitive, so only lowercase "java" will be replaced.
new_data = data.replace("java", "Python")

# Print the updated content to verify the changes.
print(new_data)

# Open the file 'pratice.txt' in write mode ('w') using the 'with' statement.
# Writing mode will overwrite the file content with the updated data.
with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt", "w") as f:
    # Write the modified content back to the file.
    f.write(new_data)


