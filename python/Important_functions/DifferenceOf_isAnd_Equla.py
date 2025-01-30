# Assigning integer value 3 to variable 'a'
a = 3

# Assigning integer value 3 to variable 'b'
b = 3

# Checking if 'a' and 'b' refer to the same object in memory
print(a is b)  # Output: True, because small integers are cached in Python

# Checking if the values of 'a' and 'b' are equal
print(a == b)  # Output: True, because both have the value 3

# Creating a list 'A' with elements 1, 2, 3, 4
A = [1, 2, 3, 4]

# Creating another list 'B' with the same elements as 'A'
B = [1, 2, 3, 4]

# Checking if 'A' and 'B' refer to the same object in memory
print(A is B)  # Output: False, because they are two distinct list objects

# Checking if the contents of 'A' and 'B' are equal
print(A == B)  # Output: True, because their contents are identical

# Creating a tuple 'C' with elements 1 and 2
C = (1, 2)

# Creating another tuple 'D' with the same elements as 'C'
D = (1, 2)

# Checking if 'C' and 'D' refer to the same object in memory
print(C is D)  # Output: True, because Python may cache small immutable objects like tuples

# Checking if the contents of 'C' and 'D' are equal
print(C == D)  # Output: True, because their contents are identical
