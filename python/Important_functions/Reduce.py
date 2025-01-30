# Import the reduce function from the functools module
from functools import reduce

# Initialize a list of integers
my_list = [1, 2, 3, 4, 5, 6, 7]

# Use reduce to compute the sum of elements in my_list
# The lambda function takes two arguments, x and y, and returns their sum
# reduce() applies this function cumulatively to the elements of the list,
# reducing the list to a single cumulative value (the total sum in this case)
Sum = reduce(lambda x, y: x + y, my_list)

# Print the computed sum
print(Sum)  # Output: 28
