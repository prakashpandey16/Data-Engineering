import numpy as np

# Creating a 3D NumPy array with one "block" (depth) of 2x4 elements
arr = np.array([[[1, 2, 3, 4], [5, 6, 7, 8]]])

# Iterating over the array using np.ndenumerate
# np.ndenumerate provides both the index and the value of each element.
for i, d in np.ndenumerate(arr):
    print(i, d)  # Prints the index and value of each element in the array
