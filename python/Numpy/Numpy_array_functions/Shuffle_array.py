import numpy as np

# Create a NumPy array with elements
arr = np.array([1, 2, 3, 4, 5, 6, 7, 8])

# Print the original array
print(arr)

# Shuffle the array in-place using np.random.shuffle()
# This randomly rearranges the elements in the array
np.random.shuffle(arr)

# Print the shuffled array
print(arr)
