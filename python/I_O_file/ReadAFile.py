# Open the file in read mode (ensure the file exists at the specified path)
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "r")

# Read the entire content of the file
data = f.read()  # This reads all data from the file into the variable 'data'

# Print the content of the file
print(data)

# Close the file to release system resources
f.close()
