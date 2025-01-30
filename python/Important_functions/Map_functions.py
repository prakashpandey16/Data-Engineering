# The map() function in Python is a built-in function that applies a 
# specified function to each item of an iterable (like a list, tuple, or string) 
# and returns a map object (an iterator). This is commonly used for transformations, 
# like converting data types or performing calculations on all elements of a collection.

# Syntax:
# map(function, iterable)

# function: A function that is applied to each item in the iterable.
# iterable: An iterable object (e.g., list, tuple).

# Read an integer input from the user, representing the number of elements in the list
n = int(input())  

# Read a space-separated input string of numbers, split it into a list of strings, 
# convert each string to an integer using the map() function, and store the result in my_list
my_list = list(map(int, input().split()))  

# Print the resulting list of integers
print(my_list)  
