# Importing numpy for numerical array operations
import numpy as np

# Creating a numpy array of integers [1, 2, 3, 4]
var = np.array([1, 2, 3, 4])

# Printing the data type of the array 'var'. Since the array contains integers, 
# it will show dtype as 'int64' (or 'int32' depending on the system architecture)
print(var.dtype)

# Creating a numpy array of strings ["A", "B", "C", "D"]
var2 = np.array(["A", "B", "c", "d"])

# Printing the data type of the array 'var2'. Since this array contains strings, 
# it will show dtype as 'U1' (Unicode strings of length 1)
print(var2.dtype)

# Creating a numpy array of floats [1.2, 4.5, 6.7]
var3 = np.array([1.2, 4.5, 6.7])

# Printing the data type of the array 'var3'. Since this array contains floating-point numbers, 
# it will show dtype as 'float64' (or 'float32' depending on the system architecture)
print(var3.dtype)

# Creating a numpy array with mixed types ["a", "b", 2, 3, 4, 8.9]
var4 = np.array(["a", "b", 2, 3, 4, 8.9])

# Printing the data type of the array 'var4'. When numpy arrays have mixed types (e.g., integers and strings),
# numpy will convert all elements to the most general type, which in this case is 'U32' (Unicode string of length 32).
print(var4.dtype)
