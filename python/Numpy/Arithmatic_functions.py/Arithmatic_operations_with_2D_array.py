import numpy as np

# Creating two 2D arrays
array1 = np.array([[1, 2, 3], [4, 5, 6]])
array2 = np.array([[7, 8, 9], [10, 11, 12]])

# Adding two 2D arrays
# Purpose: Adds corresponding elements of two 2D arrays.
add_result = np.add(array1, array2)
print("Addition of arrays:\n", add_result)

# Subtracting two 2D arrays
# Purpose: Subtracts corresponding elements of one array from another.
subtract_result = np.subtract(array1, array2)
print("Subtraction of arrays:\n", subtract_result)

# Multiplying two 2D arrays
# Purpose: Multiplies corresponding elements of two 2D arrays.
multiply_result = np.multiply(array1, array2)
print("Multiplication of arrays:\n", multiply_result)

# Dividing two 2D arrays
# Purpose: Divides corresponding elements of one 2D array by another.
divide_result = np.divide(array1, array2)
print("Division of arrays:\n", divide_result)

# Modulus of two 2D arrays
# Purpose: Computes the remainder of the division of corresponding elements.
mod_result = np.mod(array2, array1)  # Ensures array1 values are smaller for meaningful results
print("Modulus of arrays:\n", mod_result)

# Power operation
# Purpose: Raises elements of one 2D array to the power of corresponding elements in another array.
power_result = np.power(array1, 2)  # Raising elements in array1 to the power of 2
print("Power of arrays (array1 ** 2):\n", power_result)

# Reciprocal of 2D array
# Purpose: Computes the reciprocal (1/x) of each element in the array.
reciprocal_result = np.reciprocal(array1.astype(float))  # Ensure no division by zero
print("Reciprocal of array1:\n", reciprocal_result)

# Cumulative sum along rows and columns
# Purpose: Computes cumulative sums along the specified axis.
cumsum_row = np.cumsum(array1, axis=0)  # Cumulative sum along columns
print("Cumulative sum along rows:\n", cumsum_row)
cumsum_col = np.cumsum(array1, axis=1)  # Cumulative sum along rows
print("Cumulative sum along columns:\n", cumsum_col)
