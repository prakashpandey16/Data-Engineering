import numpy as np

# Creating a 1D numpy array
a = np.array([1, 2, 3, 4, 2, 23, 231, 21])

# Finding the minimum value and its index in the 1D array
# np.min(a): Returns the smallest value in the array.
# np.argmin(a): Returns the index of the smallest value in the array.
print("Min : ", np.min(a), np.argmin(a))

# Finding the maximum value and its index in the 1D array
# np.max(a): Returns the largest value in the array.
# np.argmax(a): Returns the index of the largest value in the array.
print("Max : ", np.max(a), np.argmax(a))

# Calculating the square root of each element in the 1D array
# np.sqrt(a): Computes the square root of each element in the array.
print("Sqrt : ", np.sqrt(a))

# Creating a 2D numpy array
b = np.array([[1, 4, 3], [2, 6, 5]])

# Finding the minimum value along the specified axis in the 2D array
# np.min(b, axis=0): Finds the minimum value along each column (axis 0).
print("Min (axis=0):", np.min(b, axis=0))

# Finding the maximum value along the specified axis in the 2D array
# np.max(b, axis=1): Finds the maximum value along each row (axis 1).
print("Max (axis=1):", np.max(b, axis=1))

# Calculating the square root of each element in the 2D array
# np.sqrt(b): Computes the square root of each element in the 2D array.
print("Sqrt of 2D array:\n", np.sqrt(b))


