# Initialize the global variable x with value 10
x = 10

# Define a function print_value()
def print_value():
    # Modify the global variable x inside the function
    global x  # The 'global' keyword is used to refer to the global variable x
    x = 15  # Change the value of x to 15
    
    # Initialize a local variable y within the function
    y = 20
    # Print the value of global variable x (modified to 15)
    print(x)  # Output: 15
    # Print the value of local variable y (which is 20)
    print(y)  # Output: 20

# Call the print_value() function
print_value()

# Uncommenting the following line will cause an error because y is a local variable in the print_value() function
# print(y)  # Error: NameError: name 'y' is not defined

# Print the value of global variable x after calling the function
# Since x was modified inside the function using the global keyword, it is now 15
print(x)  # Output: 15
