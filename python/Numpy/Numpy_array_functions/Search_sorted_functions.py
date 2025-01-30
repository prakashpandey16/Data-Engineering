import numpy as np

# Creating a sorted 1D array
arr = np.array([1, 2, 3, 5, 6, 7, 8])
print(arr)  # Printing the original sorted array

# Using np.searchsorted() to find the index where 4 should be inserted
# np.searchsorted() returns the index where the value (4 in this case) should be inserted to maintain the sorted order
x = np.searchsorted(arr, 4)
print(x)  # Printing the index where 4 should be inserted
