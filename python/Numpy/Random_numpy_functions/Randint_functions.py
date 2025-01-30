# Importing the numpy library for generating random numbers
import numpy as np

# np.random.randint() generates random integers from a specified range.
# It returns a random integer between the two values specified (1 inclusive, 5 exclusive).
# random.randint(min,max,total_number)
var = np.random.randint(1, 5,5)

# Printing the generated random integer
print(var)
