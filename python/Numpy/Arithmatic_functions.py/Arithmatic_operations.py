import numpy as np

# Creating two numpy arrays for arithmetic operations
var1 = np.array([1, 2, 3, 4])
var2 = np.array([5, 6, 7, 8])

# Adding two arrays using np.add()
# Purpose: Element-wise addition of two arrays. Equivalent to 'var1 + var2'.
a = np.add(var1, var2)
print("Addition of arrays (var1 + var2):", a)

# Subtracting two arrays using np.subtract()
# Purpose: Element-wise subtraction of two arrays. Equivalent to 'var1 - var2'.
b = np.subtract(var1, var2)
print("Subtraction of arrays (var1 - var2):", b)

# Multiplying two arrays using np.multiply()
# Purpose: Element-wise multiplication of two arrays. Equivalent to 'var1 * var2'.
c = np.multiply(var1, var2)
print("Multiplication of arrays (var1 * var2):", c)

# Dividing two arrays using np.divide()
# Purpose: Element-wise division of two arrays. Equivalent to 'var1 / var2'.
# Ensures floating-point division even if input arrays have integer dtype.
d = np.divide(var1, var2)
print("Division of arrays (var1 / var2):", d)

# Modulus of two arrays using np.mod()
# Purpose: Element-wise modulus operation (remainder after division).
# Using 'a' and 'b' from above as inputs.
e = np.mod(a, b)
print("Modulus of arrays (a % b):", e)

# Power operation using np.power()
# Purpose: Element-wise exponentiation. Raises each element of 'var1' to the power of the corresponding element in 'var2'.
f = np.power(var1, var2)
print("Power of arrays (var1 ** var2):", f)

# Reciprocal of a value using np.reciprocal()
# Purpose: Computes the reciprocal (1/x) of each element in the array.
# Error: The input must be an array, not a scalar. The reciprocal of a scalar is not directly supported.
abc = np.array([10])  # Corrected to make 'abc' a numpy array.
g = np.reciprocal(abc)
print("Reciprocal of abc (1 / abc):", g)
