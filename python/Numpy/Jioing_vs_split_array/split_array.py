import numpy as np

# Creating a 1D array
arr1 = np.array([1, 2, 3, 4, 5, 6])

# Printing the original array
print(arr1)

# Using np.array_split to split the 1D array into 3 sub-arrays
# The number of sub-arrays is specified (3 here), but the split doesn't need to be even
arr1_new = np.array_split(arr1, 3)

# Printing the result of the split
print(arr1_new)  # Output: List of sub-arrays
print(type(arr1_new))  # Output: <class 'list'> (because the result is a list of arrays)
print(arr1_new[0])  # Output: The first sub-array of the split

# --------------------------- Working with 2D array ---------------------------

# Creating a 2D array (2 rows and 4 columns)
a = np.array([[1, 2, 5, 6], [3, 4, 8, 9]])

# Printing the original 2D array
print(a)

# Using np.array_split to split the 2D array along axis 0 (rows)
# Axis=0 means splitting along rows (vertically), i.e., creating sub-arrays from rows
join_a_b = np.array_split(a, 3, axis=0)

# Printing the result of splitting the 2D array along axis 0
print(join_a_b)
