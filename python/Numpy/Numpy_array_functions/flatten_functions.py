import numpy as np

# Create a 2x3 NumPy array with elements
arr = np.array([[1, 2, 3], [4, 5, 6]])

# Print the original 2x3 array
print(arr)

# Print a blank line for separation
print()

# Use flatten() to create a 1D array from the original 2D array (C-style row-major order)
# This flattens the array row by row
print(arr.flatten())

# Use flatten(order="F") to flatten the array in Fortran-style column-major order
# In Fortran-style, the array is flattened column by column
print(arr.flatten(order="F"))

# Use flatten(order="A") to flatten the array in 'A' order (which means default 'F' order if the array is Fortran-contiguous, otherwise 'C' order)
# This is the default behavior for non-contiguous arrays
print(arr.flatten(order="A"))

# Use flatten(order="k") to flatten the array in "K" order (which preserves the memory layout of the array)
# The elements are traversed in the order in which they are stored in memory
print(arr.flatten(order="k"))
