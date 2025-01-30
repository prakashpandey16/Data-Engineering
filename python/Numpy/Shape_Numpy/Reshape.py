import numpy as np

# Creating a 1D numpy array with values from 1 to 9
var1 = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9])
print("Original 1D array 'var1':", var1)

# Checking the number of dimensions of the 1D array
# np.ndim(var1): Returns the number of dimensions. For a 1D array, the result is 1.
print("Number of dimensions of 'var1':", var1.ndim)

# Reshaping the 1D array into a 2D array with 3 rows and 3 columns
# np.reshape(var1, (3, 3)): Reshapes the array into the specified shape.
# The total number of elements (9) must remain the same after reshaping.
var2 = var1.reshape(3, 3)
print("Reshaped 2D array 'var2':\n", var2)

# Checking the number of dimensions of the reshaped 2D array
# For a 2D array, the result is 2.
print("Number of dimensions of 'var2':", var2.ndim)

# Flattening the 2D array back to a 1D array
# np.reshape(-1): Flattens the array into a 1D array, automatically calculating the size.
x = var2.reshape(-1)
print("Flattened array 'x':", x)

# Checking the number of dimensions of the flattened array
# Since it's now a 1D array, the result is 1.
print("Number of dimensions of 'x':", x.ndim)
