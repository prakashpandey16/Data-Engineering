import numpy as np

# Create a NumPy array with elements
element = np.array([1, 2, 3, 4])

# Create a list of Boolean values, where each element corresponds to whether the 
# respective element in 'element' should be included (True) or excluded (False)
f = [True, False, True, False]

# Using Boolean indexing: select elements from 'element' where the corresponding
# value in 'f' is True
new_element = element[f]

# Printing the filtered elements that correspond to True values in the list 'f'
print(new_element)

