import numpy as np

# Creating a 2D NumPy array with two rows of equal length
arr2 = np.array([[1, 2, 3, 4, 5], [4, 5, 6, 67, 5]])

# Accessing the element in the first row (0th row) and second column (1st index)
print(arr2[0, 1])  # Output: 2

# Slicing the first row (0th row) from the 2nd index (inclusive) to the end
print(arr2[0, 2:])  # Output: [3 4 5]

# Slicing the second row (1st row) from the 1st index to the 4th index (exclusive)
print(arr2[1, 1:4])  # Output: [5 6 67]

# Slicing the second row (1st row) from the start to the last element (exclusive)
print(arr2[1, :-1])  # Output: [4 5 6 67]

