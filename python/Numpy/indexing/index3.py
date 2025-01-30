import numpy as np

# Creating a 3D NumPy array with one "block" (depth) of 3x3 elements
arr3 = np.array([[[1, 2, 3], [4, 5, 6], [7, 8, 9]]])

# Printing the number of dimensions of the array
print(arr3.ndim)  # Output: 3, because the array is 3-dimensional

# Accessing and printing specific elements
print(arr3[0][0][1])  # Accesses the first "block" (index 0), first row (index 0), second element (index 1): 2
print(arr3[0][2])     # Accesses the first "block" (index 0), third row (index 2): [7 8 9]
print(arr3[0][1][2])  # Accesses the first "block" (index 0), second row (index 1), third element (index 2): 6
