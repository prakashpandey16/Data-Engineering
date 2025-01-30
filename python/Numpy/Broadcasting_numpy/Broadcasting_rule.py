import numpy as np

# Broadcasting rules:
# 1. Same dimension: Arrays can be broadcasted together if they have the same number of dimensions.
# 2. Number of rows in both arrays must be the same or be broadcastable (i.e., one of them should have size 1 in the dimension).
# In this case, the two arrays should align or be compatible for element-wise operations.

# Example 1: Arrays with the same dimensions
a = np.array([1, 2, 3])  # 1D array of size 3
b = np.array([1, 2, 3])  # 1D array of size 3

# Adding the two arrays element-wise
# Since both arrays have the same shape, broadcasting happens naturally and they are added element by element.
print("Sum of a and b:", a + b)  # Output: [2, 4, 6]

# Example 2: Arrays with different dimensions
a = np.array([1, 2, 3])      # 1D array of size 3
b = np.array([1, 2, 3, 4])   # 1D array of size 4

# Attempting to add the two arrays
# Since the arrays have different shapes (3 and 4 elements), they cannot be broadcast together.
# This will result in a ValueError because their shapes are incompatible for element-wise addition.
# print(a + b)  This will raise a ValueError
