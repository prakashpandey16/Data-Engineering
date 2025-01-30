# Open the file in append mode ('a'). 
# If the file exists, it will not be overwritten, and new content will be added at the end of the file.
# If the file does not exist, it will be created.
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "a")

# Write the new line of text to the file.
# This appends "After that I will learn SQL." followed by a newline character to the end of the file.
f.write("After that i will learn SQl.\n")

# Close the file to ensure the changes are saved and resources are released.
f.close()
