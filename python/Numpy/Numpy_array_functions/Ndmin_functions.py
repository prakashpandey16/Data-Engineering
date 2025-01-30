import numpy as np

# Creating a 1D numpy array with values from 1 to 7
var1 = np.array([1, 2, 3, 4, 5, 6, 7])
print("Original 1D array 'var1':", var1)

# Checking the number of dimensions of the 1D array
# np.ndim(var1): Returns the number of dimensions of 'var1'. Since it's a 1D array, the result is 1.
print("Number of dimensions of 'var1':", var1.ndim)

# Creating a 2D numpy array using the 'ndmin' parameter
# The 'ndmin=2' argument forces the creation of a 2D array, even if the input array is 1D.
var2 = np.array([1, 2, 3, 4, 5, 6, 7], ndmin=2)
print("2D array 'var2' created with 'ndmin=2':", var2)

# Checking the number of dimensions of the newly created 2D array
# Since 'var2' is explicitly created as a 2D array, the result is 2.
print("Number of dimensions of 'var2':", var2.ndim)
