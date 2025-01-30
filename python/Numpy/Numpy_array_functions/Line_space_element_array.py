import numpy as np  # type: ignore # Importing the NumPy library for working with arrays

# Creating a linearly spaced array with 5 elements between 0 and 20 (inclusive)
a = np.linspace(0, 20, num=5)  # np.linspace(start, stop, num) creates 'num' evenly spaced values between 'start' and 'stop'
print(a)  # Printing the array created by np.linspace
