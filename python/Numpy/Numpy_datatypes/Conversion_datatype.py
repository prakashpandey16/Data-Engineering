# Importing the numpy library
import numpy as np

# Creating a numpy array 'a' with integers and explicitly specifying the dtype as 'int32'
# The 'dtype' argument specifies the data type of the array. In this case, it is set to 'int32', meaning 32-bit integers.
# This ensures the array will use 32 bits to store each integer, which is memory efficient.
a = np.array([1, 2, 3, 4], dtype=np.int32)

# Printing the data type of array 'a', which will be 'int32' as we specified the dtype
print(a.dtype)

# Creating a numpy array 'b' without explicitly specifying the dtype
# When no dtype is specified, numpy will automatically choose the most suitable data type based on the input values.
# In this case, it will likely choose 'int64' or 'int32' depending on the system architecture.
b = np.array([1, 2, 3, 4])

# Printing the data type of array 'b'. It will likely be 'int64' or 'int32' depending on the system architecture
print(b.dtype)

# Corrected: Creating a numpy array 'c' from array 'b' and explicitly specifying the dtype as 'f' (which means float32)
# Using dtype="f" specifies that the elements in the array should be stored as float32 (32-bit floating point).
# This can be useful when you need to perform calculations involving decimals or want to save memory compared to float64.
c = np.array(b, dtype="f")

# Printing array 'c', which will now contain float numbers as dtype was set to float32
print(c)
