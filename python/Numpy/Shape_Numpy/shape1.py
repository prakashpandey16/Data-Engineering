import numpy as np

# Creating a 1D numpy array
a = np.array([1, 2, 3, 4])  
print("1D Array 'a':", a)

# Checking the number of dimensions of the array
# np.ndim(a): Returns the number of dimensions of the array.
print("Number of dimensions of 'a':", a.ndim)

# Checking the shape of the array
# np.shape(a): Returns the shape (size along each dimension) of the array.
print("Shape of 'a':", a.shape)

# Creating a 2D numpy array
# Using a tuple to create a 2D array explicitly
b = np.array([[1, 2, 3, 4], [5, 6, 7, 8]])
print("2D Array 'b':\n", b)

# Checking the number of dimensions of the 2D array
print("Number of dimensions of 'b':", b.ndim)

# Checking the shape of the 2D array
print("Shape of 'b':", b.shape)  # Corrected: This line was mistakenly using 'a.shape' instead of 'b.shape'.
