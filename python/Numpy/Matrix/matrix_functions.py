import numpy as np

# Create a 2x3 matrix
arr = np.array([[1, 2, 3], [4, 5, 6]])

# Print the original matrix
print("Original Matrix:")
print(arr)

# 1. Transpose of the array
arr_t = arr.T  # Transpose swaps the rows and columns of the matrix.
print("\nTranspose of the Matrix:")
print(arr_t)

# 2. Swapaxes
arr_s = np.swapaxes(arr, 0, 1)  # Swapping the first axis (rows) and second axis (columns).
# This swaps the shape of the matrix, turning rows into columns and vice versa.
print("\nSwapped Axes Matrix:")
print(arr_s)

# 3. Inverse of a matrix (for square matrices)
# The inverse of a matrix exists only for square matrices (n x n).
# Here, a 2x3 matrix (non-square) doesn't have an inverse, so we use a square matrix for the example.
square_arr = np.array([[1, 2], [3, 4]])

# Inverse of a square matrix
# The inverse of a matrix A is a matrix B such that A * B = I (the identity matrix).
print("\nInverse of Square Matrix:")
try:
    print(np.linalg.inv(square_arr))  # Inverse is computed using np.linalg.inv()
except np.linalg.LinAlgError:
    print("Matrix is not invertible")

# 4. Matrix Power (raising the matrix to a given power)
# The matrix power operation calculates the matrix raised to the power n (i.e., A^n).
# For example, A^2 = A * A, A^3 = A * A * A, etc.
# This works only for square matrices.
print("\nMatrix Power (2) of Square Matrix:")
print(np.linalg.matrix_power(square_arr, 2))  # Raises the matrix to the power of 2

# 5. Determinant of a matrix
# The determinant is a scalar value that is computed from the elements of the matrix.
# The determinant is only defined for square matrices, and it provides information about the matrix (e.g., if it's invertible).
print("\nDeterminant of Square Matrix:")
print(np.linalg.det(square_arr))  # The determinant is computed using np.linalg.det()
