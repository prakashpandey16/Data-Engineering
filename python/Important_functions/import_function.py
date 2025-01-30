# Importing the math module to access mathematical functions
import math

# Using the sqrt function from the math module to calculate the square root of 9
# The result will be 3.0
print(math.sqrt(9))  # Output: 3.0


# Importing the math module with an alias 'm' for easier reference
import math as m

# Using the floor function from the math module to get the largest integer less than or equal to 3.222
# The result will be 3
print(m.floor(3.222))  # Output: 3

# Using the ceil function from the math module to get the smallest integer greater than or equal to 3.22
# The result will be 4
print(m.ceil(3.22))  # Output: 4


# Importing only the cbrt function (cube root) from the math module and renaming it to 'cb'
from math import cbrt as cb

# Using the cube root function to calculate the cube root of 27
# The result will be 3.0
print(cb(27))  # Output: 3.0


# Importing all functions from the math module
from math import *

# Using the sqrt function directly without referring to 'math' to calculate the square root of 16
# The result will be 4.0
result = sqrt(16)  # Output: 4.0
print(result)


# Importing the math module to use the dir function
import math

# Using the dir function to get a list of all the attributes (functions, constants, etc.) in the math module
print(dir(math))  # Output: A list of functions like 'sqrt', 'floor', 'ceil', etc., available in the math module
