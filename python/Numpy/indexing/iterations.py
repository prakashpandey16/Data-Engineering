import numpy as np

# Creating a 1D NumPy array
arr1 = np.array([1, 2, 3, 4, 5, 6])

# Iterating over each element of the 1D array and printing it
for ele in arr1:
    print(ele)  # Prints each element: 1 2 3 4 5 6

print()  # Print a newline for clarity

# Creating a 2D NumPy array
arr2 = np.array([[1, 2, 3, 4], [5, 6, 7, 8]])

# Iterating over each row (as 2D arrays are iterated row by row)
for el in arr2:
    print(el)  # Prints each row: [1 2 3 4] [5 6 7 8]

print()  # Print a newline for clarity

# Nested iteration: iterating over each element of each row
for i in arr2:
    for j in i:
        print(j, end=" ")  # Prints individual elements row by row: 1 2 3 4 5 6 7 8

print()  # Print a newline for clarity

# Creating a 3D NumPy array
arr3 = np.array([[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]])

# Iterating over each 2D block of the 3D array
for ele in arr3:
    print(ele)  # Prints each 2D block: [[1 2 3 4] [5 6 7 8] [9 10 11 12]]

print()  # Print a newline for clarity

# Nested iteration: iterating over each element in each 2D block
for i in arr3:
    for j in i:
        for k in j:  # Corrected: iterate over each element in each row of the block
            print(k, end=" ")  # Prints individual elements of the 3D array: 1 2 3 4 5 6 7 8 9 10 11 12
