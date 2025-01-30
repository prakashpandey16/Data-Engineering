# Importing the numpy library, which is essential for performing operations involving arrays and random number generation
import numpy as np

# np.random.rand() generates an array of random numbers between 0 and 1. 
# Here, we generate 5 random numbers and store them in the 'var' variable.
var = np.random.rand(5)

# Print the 1D array (vector) of 5 random numbers
print(var)

# np.random.rand() can also take multiple arguments to create multidimensional arrays.
# In this case, we generate a 2x3 array (2 rows and 3 columns) of random numbers and store it in the 'var2' variable.
var2 = np.random.rand(2, 3)

# Print the 2D array (matrix) of random numbers with shape 2x3
print(var2)
