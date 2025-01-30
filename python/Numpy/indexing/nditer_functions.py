import numpy as np

# Creating a 3D NumPy array with one "block" (depth) of 2x4 elements
arr3 = np.array([[[1, 2, 3, 4], [5, 6, 7, 8]]])

# Iterating over the array using np.nditer
# np.nditer allows efficient iteration over NumPy arrays, and it can iterate over multi-dimensional arrays.
for i in np.nditer(arr3):
    print(i, end=" ")  # Prints each element in the array sequentially: 1 2 3 4 5 6 7 8

print()  # Print a newline for clarity

# Iterating over the array with the "buffered" flag and "S" dtype
# The "buffered" flag ensures that the iteration happens in a buffered manner, which can be more efficient in certain cases.
# The "op_dtypes" specifies the output data type for the iteration. "S" indicates a string data type.
for i in np.nditer(arr3, flags=["buffered"], op_dtypes="S"):
    print(i)  # Prints each element as a string (the elements will be converted to byte strings)
