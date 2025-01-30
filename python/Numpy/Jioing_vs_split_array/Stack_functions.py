import numpy as np

# Creating two 1D arrays
a = np.array([1, 2, 3, 4])
b = np.array([5, 6, 7, 8])

# Using np.stack to join arrays along a new axis (axis=0)
# stack() adds a new dimension to the arrays and stacks them along that axis.
join_arr1 = np.stack((a, b), axis=0)  
# Result: 2D array with shape (2, 4) (arrays stacked row-wise).

# Using np.hstack to horizontally stack the arrays
# hstack() joins arrays along the horizontal axis (axis=1 for 2D).
join_arr2 = np.hstack((a, b))  
# Result: 1D array with elements from both a and b concatenated end-to-end.

# Using np.vstack to vertically stack the arrays
# vstack() joins arrays along the vertical axis (axis=0 for 2D).
join_arr3 = np.vstack((a, b))  
# Result: 2D array with shape (2, 4) (arrays stacked column-wise).

# Using np.dstack to stack arrays along the depth (3rd dimension)
# dstack() adds a new axis along the third dimension (depth).
join_arr4 = np.dstack((a, b))  
# Result: 3D array with shape (1, 4, 2), as it stacks the arrays along depth.

# Printing the results of each join operation
print("Stack along axis=0:")
print(join_arr1)  # Output: 2D array with 2 rows, each containing a and b.

print()
print("Horizontal stack (hstack):")
print(join_arr2)  # Output: 1D array with elements [1 2 3 4 5 6 7 8].

print()
print("Vertical stack (vstack):")
print(join_arr3)  # Output: 2D array with 2 rows, each containing a and b.

print()
print("Depth stack (dstack):")
print(join_arr4)  # Output: 3D array with shape (1, 4, 2), stacking a and b along depth.
