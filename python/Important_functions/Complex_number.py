import cmath  # Importing the cmath module which provides mathematical functions for complex numbers

# Step 1: Read the input complex number as a string and remove any extra whitespace
z = input().strip()  # The input will be in the form 'a+bj' or 'a-bj'

# Step 2: Convert the input string into a complex number using Python's built-in complex() function
complex_number = complex(z)  # complex() automatically parses the string to create a complex number (e.g., '1+2j' becomes complex(1, 2))

# Step 3: Calculate and print the magnitude (absolute value) of the complex number
# abs() function returns the magnitude of the complex number, which is sqrt(a^2 + b^2) where z = a + bj
print(abs(complex_number))  # abs() is used to compute the magnitude of the complex number

# Step 4: Calculate and print the phase (angle) of the complex number in radians
# cmath.phase() function returns the phase (or argument) of the complex number, i.e., the angle of the complex number
print(cmath.phase(complex_number))  # cmath.phase() gives the phase (angle) in radians, which is the angle made with the positive real axis
