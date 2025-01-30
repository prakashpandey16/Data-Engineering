# Docstring for the function
def add(a, b):
    '''Takes two inputs a and b, and then calculates the sum of a and b'''
    # The line above is a docstring. A docstring is a special kind of comment that is used to 
    # document functions, classes, and modules.
    # It is a multi-line string placed right under the function definition.
    # Docstrings help explain what the function does, its parameters, and its return values.
    print(a + b)  # This will print the sum of a and b

# Calling the function to add 10 and 20
add(10, 20)  # This will call the function and print: 30

# Printing the docstring of the add function using __doc__
print(add.__doc__)  # This will print the docstring of the function:
# 'Takes two inputs a and b, and then calculates the sum of a and b'
