import numpy as np

# Create a 2x3 NumPy array with elements
a = np.array([[1, 2, 3], [4, 5, 6]])

# Print the original 2x3 array
print(a)

# Use ravel() to flatten the array in row-major order (C-style order)
# The ravel() function returns a 1D array, and the "C" order means it flattens the array row by row
print(a.ravel(order="C"))
