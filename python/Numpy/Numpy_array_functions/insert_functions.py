import numpy as np

# Create a 1D NumPy array with elements
arr = np.array([1, 2, 3, 4, 6, 7, 8])

# Print the original 1D array
print(arr)

# Use np.insert() to insert the value 5 at index 4 in the original array.
# The original array has elements [1, 2, 3, 4, 6, 7, 8], so inserting 5 at index 4
# results in [1, 2, 3, 4, 5, 6, 7, 8]
x = np.insert(arr, 4, 5)

# Print the array after inserting 5
print(x)

# Use np.append() to append the value 9 to the end of the original array.
# The original array is [1, 2, 3, 4, 6, 7, 8], and after appending 9,
# the resulting array will be [1, 2, 3, 4, 6, 7, 8, 9]
y = np.append(arr, 9)

# Print the array after appending 9
print(y)

# --------------------------------------
# Working with 2D array

# Create a 2x4 2D NumPy array
brr = np.array([[1, 3, 4, 5], [8, 9, 10, 11]])

# Print the original 2D array
print(brr)

# Use np.insert() to insert a new row at index 2 in the 2D array.
# We are inserting a new row [12, 13, 14, 15] at axis 0 (which corresponds to rows).
# The original array is:
# [[1, 3, 4, 5],
#  [8, 9, 10, 11]]
# After inserting the new row, the array becomes:
# [[ 1,  3,  4,  5],
#  [ 8,  9, 10, 11],
#  [12, 13, 14, 15]]
a = np.insert(brr, 2, [12, 13, 14, 15], axis=0)

# Print the new 2D array after the insertion
print(a)
