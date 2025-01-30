import numpy as np

# Create a NumPy array with some repeated elements
a = np.array([1, 2, 3, 5, 6, 2, 4, 4, 5, 4])

# Print the original array
print(a)

# Use np.unique() to get unique elements, their first occurrence indices, and the counts of each element
# return_index=True returns the indices of the first occurrence of each unique value
# return_counts=True returns the count of each unique value in the array
x = np.unique(a, return_index=True, return_counts=True)

# Print the result
print(x)
