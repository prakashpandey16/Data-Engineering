# Importing the 'product' function from the 'itertools' module to calculate the Cartesian product
from itertools import product

# Define two tuples a and b
a = (1, 2)
b = (3, 4)

# Calculate the Cartesian product of a and b using itertools.product
result = product(a, b)

# Iterate over each tuple in the result (Cartesian product)
for part in result:
    # Print each tuple 'part' from the result, separated by a space instead of a newline
    print(part, end=" ")
