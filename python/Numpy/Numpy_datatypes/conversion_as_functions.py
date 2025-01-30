# Importing the numpy library for numerical array operations
import numpy as np

# Creating a numpy array 'a' with integers
# This array will have a default dtype of 'int32' or 'int64', depending on the system architecture
a = np.array([1, 2, 3, 4])

# Converting the array 'a' into a new array with dtype 'float32' using np.float32()
# Purpose: The np.float32() function explicitly converts the data type of the array elements to 32-bit floating-point numbers.
# This is useful if we need to perform floating-point operations, save memory compared to float64, or meet requirements of certain numerical libraries.
new = np.float32(a)

# Printing the data type of the original array 'a'
# This confirms that the original array remains unchanged (int32 or int64).
print("Data Type of 'a': ", a.dtype)

# Printing the data type of the new array 'new'
# The data type of 'new' will now be 'float32', as we converted it using np.float32().
print("Data Type of 'new': ", new.dtype)

# Printing the original array
# Purpose: To show that the original array has not been altered during the conversion process.
print("Original array: ", a)

# Printing the new array
# Purpose: To display the converted array with float32 data type.
print("Converted array: ", new)
