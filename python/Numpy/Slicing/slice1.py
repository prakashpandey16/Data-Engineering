import numpy as np

# Creating a 1D NumPy array
arr = np.array([1, 2, 3, 4, 5])

# Slicing elements from index 1 to 3 (end index 4 is excluded)
print(arr[1:4])  # Output: [2 3 4]

# Slicing the last two elements of the array
print(arr[-2:])  # Output: [4 5]

# Slicing elements from the 4th last index to the 1st last index (end index -1 is excluded)
print(arr[-4:-1])  # Output: [2 3 4]

# Slicing all elements from the 4th last index to the end of the array
print(arr[-4:])  # Output: [2 3 4 5]
