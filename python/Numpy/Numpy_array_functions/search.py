import numpy as np

# Creating a 1D array with some repeated elements
arr = np.array([1, 2, 5, 6, 9, 23, 5, 13, 5])

# Using np.where() to find the indices where the elements are equal to 5
# np.where() returns the indices of the array where the condition is true
x = np.where(arr == 5)

# Printing the result, which is a tuple containing the indices where the value is 5
print(x)
