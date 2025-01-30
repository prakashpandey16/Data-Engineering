import numpy as np

# Creating a 2D NumPy array
var = np.array([[1, 2, 3, 4], [5, 6, 7, 8]])

print(var.ndim)
# Printing specific elements from the array
print(var[0][0])  # Prints the first element of the first row: 1
print(var[1][3])  # Prints the last element of the second row: 8
print(var[0][3])  # Prints the last element of the first row: 4

# Iterating through each row of the array and printing it
for ele in var:
    print(ele, end=" ")  # Prints each row of the array: [1 2 3 4] [5 6 7 8]

print()  # To add a newline for better readability

# Printing elements of the first row (index 0) one by one
for i in range(len(var[0])):  # Iterates through the indices of the first row
    print(var[0][i], end=" ")  # Prints each element of the first row: 1 2 3 4
