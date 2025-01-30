# Import the NumPy library, which is used for numerical computations and handling arrays.
import numpy as np

# Create a NumPy array with elements 1, 2, 3, 4, and 5, and assign it to the variable 'var'.
var = np.array([1, 2, 3, 4, 5])

# Access and print the second element (index 1) of the array. Indexing starts at 0 in Python.
print(var[1])  # Output: 2

# Access and print the fifth element (index 4) of the array.
print(var[4])  # Output: 5
print(var[-2])
print(var.ndim)

# Iterate through each element of the array and print it on the same line, separated by spaces.
for ele in var:
    print(ele, end=" ")  # Prints: 1 2 3 4 5

