import numpy as np

# Create a 1D NumPy array with elements
arr = np.array([1, 2, 3, 4, 56, 9])

# Print the original array
print(arr)

# Use np.delete() to remove the element at index 4 (which is the value 56 in this case)
# The original array is [1, 2, 3, 4, 56, 9], and after deleting the element at index 4,
# the resulting array will be [1, 2, 3, 4, 9]
x = np.delete(arr, 4)

# Print the array after deletion
print(x)
