# Importing the numpy library
import numpy as np

# np.random.ranf() generates random floating-point numbers between 0 and 1.
# It creates a 1D array of the specified length, here generating 5 random numbers.
# it creates [0.0,1.0) interval o is include but 1 is exclude
var = np.random.ranf(5)

# Printing the 1D array of 5 random numbers
print(var)
