# Define a function that returns True if the input is greater than 4
def filter_function(a):
    return a > 4

# Initialize a list of integers from 1 to 9
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Print the original list
print(my_list)  # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Use the filter() function to apply filter_function to each element in my_list
# filter() returns an iterator with elements that satisfy the condition
# Convert the iterator to a list to get the filtered elements
new_list = list(filter(filter_function, my_list))

# Print the new filtered list
print(new_list)  # Output: [5, 6, 7, 8, 9]
