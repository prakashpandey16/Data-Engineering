import numpy as np  # Importing the NumPy library for working with arrays

# Creating a 1D array in NumPy
a = np.array([1, 2, 3, 4])  # A simple one-dimensional array
print(a)  # Printing the 1D array
print(a.ndim, end="\n")  # Printing the number of dimensions of the array (1D)

# Creating a 2D array in NumPy
b = np.array([[1, 2, 3, 4],  # First row of the 2D array
              [5, 6, 7, 8]])  # Second row of the 2D array
print(b)  # Printing the 2D array
print(b.ndim, end="\n")  # Printing the number of dimensions of the array (2D)

# Creating a 3D array in NumPy
c = np.array([[[1, 2, 3, 4],    # First row of the first "layer" of the 3D array
                [5, 6, 7, 8],    # Second row of the first "layer"
                [9, 10, 11, 12]]])  # Third row of the first "layer"
print(c)  # Printing the 3D array
print(c.ndim, end="\n")  # Printing the number of dimensions of the array (3D)

# Creating an N-dimensional array in NumPy
d = np.array([1, 2, 3, 4], ndmin=10)  # Forcing the array to have 10 dimensions
print(d)  # Printing the N-dimensional array
print(d.ndim)  # Printing the number of dimensions of the array (10D)
