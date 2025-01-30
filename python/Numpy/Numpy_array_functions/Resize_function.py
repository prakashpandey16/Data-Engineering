import numpy as np

# Create a NumPy array with elements
arr = np.array([1, 2, 3, 4, 5, 6])

# Use np.resize() to reshape the array into a 2x3 matrix
# If the new shape is larger than the original size, the array will be repeated to fill the new shape
x = np.resize(arr, (2, 3))

# Print the resized array
print(x)
