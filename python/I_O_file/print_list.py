with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt", "r") as f:
    data = f.read()
    print(data)  # Printing the entire content of the file
    print("Printing through loop:\n")

    num = ""  # Initialize an empty string to accumulate characters
    for i in range(len(data)):  # Loop through the file content by index
        if data[i] == ",":  # Check if the character is a comma
            print(num)  # Print the accumulated 'num' string
            num = ""  # Reset 'num' for the next number
        else:
            num += data[i]  # Append the character to 'num'

    # After the loop, check if there's any remaining number to print
    if num:  # If 'num' is not empty
        print(num)



    
        