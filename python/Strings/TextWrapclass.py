import textwrap  # Importing the textwrap module for wrapping and formatting text

# Function to wrap a string into a list of substrings with a specified maximum width
def print_string(string, maxwidth):
    # Using textwrap.wrap to split the string into chunks of length maxwidth
    print(textwrap.wrap(string, maxwidth))  # Print the resulting list of substrings

# Function to format a string into a block of text with a specified maximum width per line
def PrintString(string, maxwidth):
    # Using textwrap.fill to format the string into a multi-line string
    return textwrap.fill(string, maxwidth)

# Main code
string = "Hellothisismeprakashpaandey"  # Input string
maxwidth = 4  # Maximum width for each line or substring

# Calling the first function to print the wrapped string as a list
print_string(string, maxwidth)

# Calling the second function to format the string into a block and store the result
result = PrintString(string, maxwidth)

# Printing the formatted multi-line string
print(result)
