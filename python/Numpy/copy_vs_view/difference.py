import numpy as np

# Creating a 1D NumPy array
arr2 = np.array([1, 2, 3, 4, 5, 6])

# Creating a deep copy of arr2
# The copy() method creates an independent copy of the original array.
# Any modifications to the original array (arr2) will NOT affect the copied array (co).
co = arr2.copy()

# Modify an element in the original array (arr2)
arr2[2] = 40  # Changing the element at index 2 to 40

# Printing original and copied arrays
print("arr2 : ", arr2)  # arr2 will be modified: [ 1  2 40  4  5  6]
print("copy : ", co)    # copy remains unchanged: [1 2 3 4 5 6]

# Creating a shallow view of arr2
# The view() method creates a view of the original array.
# Both the original array (arr2) and the view (vi) share the same data in memory.
# Modifications made to one will be reflected in the other because they both point to the same data.
vi = arr2.view()

# Modify an element in the original array (arr2)
arr2[3] = 50  # Changing the element at index 3 to 50

# Printing modified arrays
print("arr2 : ", arr2)  # arr2 will be modified: [ 1  2 40 50  5  6]
print("view : ", vi)    # view will also reflect the changes: [ 1  2 40 50  5  6]
