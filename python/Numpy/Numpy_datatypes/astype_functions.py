# Importing the numpy library for numerical operations
import numpy as np

# Creating a numpy array 'a' with integers
# The default dtype for this array will be 'int32' or 'int64', depending on the system architecture.
a = np.array([1, 2, 3, 4])

# Converting the array 'a' into a new array 'b' with dtype 'float'
# Purpose: The astype() method is used to explicitly change the data type of the elements in the array.
# In this case, 'astype(float)' converts the elements of 'a' from integers to floating-point numbers (float64).
b = a.astype(float)

# Printing the data type of the original array 'a'
# This shows that the dtype of the original array remains unchanged.
print("Data Type of 'a': ", a.dtype)

# Printing the data type of the new array 'b'
# The dtype of 'b' will now be 'float64' because of the conversion.
print("Data Type of 'b': ", b.dtype)

# Printing the original array
# Purpose: To confirm that the original array 'a' is still intact and has not been modified during the conversion process.
print("Original array: ", a)

# Printing the new array
# Purpose: To show that the new array 'b' contains the same elements as 'a', but they are now floating-point numbers.
print("Converted array: ", b)
