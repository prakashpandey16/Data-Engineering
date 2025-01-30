import numpy as np

# Creating two 1D arrays
a = np.array([1, 2, 3, 4])
b = np.array([5, 6, 7, 8])

# Using np.concatenate() to join the two 1D arrays
# Concatenating along the 0th axis (default), which means the arrays are joined end-to-end
new_arr = np.concatenate((a, b))

# Printing the original arrays and the result of concatenation
print("a : ", a)  # Output: [1 2 3 4]
print("b : ", b)  # Output: [5 6 7 8]
print("join array : ", new_arr)  # Output: [1 2 3 4 5 6 7 8]
print()

# Creating two 2D arrays
arr = np.array([[1, 2], [3, 4]])
brr = np.array([[5, 6], [7, 8]])

# Using np.concatenate() to join the two 2D arrays
# Setting axis=1 means the arrays will be concatenated along columns (horizontally).
# If axis=0 (default), they would be concatenated vertically (along rows).
new_join = np.concatenate((arr, brr), axis=1)

# Printing the original 2D arrays and the result of concatenation
print("arr : ", arr)
# Output: 
# [[1 2]
#  [3 4]]
print("brr : ", brr)
# Output: 
# [[5 6]
#  [7 8]]
print("join array : ", new_join)
# Output: 
# [[1 2 5 6]
#  [3 4 7 8]]
