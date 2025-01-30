# Open the file in write mode ('w'). 
# If the file does not exist, it will be created. If it exists, its content will be overwritten.
f = open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt", "w")

# Write the provided string to the file.
# This writes "Hey this is me Prakash Pandey and I am currently learning python from Apna College" followed by a newline.
f.write("Hey this is me prakash pandey and i am currently learning python from apna college\n")

# Close the file after writing to ensure that changes are saved and resources are released.
f.close()
