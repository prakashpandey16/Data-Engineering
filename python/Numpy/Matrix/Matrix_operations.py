import numpy as np

# Create a 2x3 matrix (arr) and a 2x3 matrix (brr) to make the addition valid
arr = np.matrix([[1, 2, 3], [4, 5, 6]])
brr = np.matrix([[7, 8, 9], [10, 11, 12]])

# Matrix Addition (valid since both matrices have the same shape)
new_matr1 = arr + brr
print("Matrix Addition Result:")
print(new_matr1)

# Matrix Multiplication (arr is 2x3, brr is 3x2, so multiplication is valid)
# Transpose brr for valid multiplication
print("\nMatrix Multiplication Result:")
new_matr2 = arr.dot(brr.T)  # Use transpose of brr to make it a 3x2 matrix
print(new_matr2)
