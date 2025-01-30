# Use of lambda functions in Python

# Normal function: This function takes an input 'x' and returns its double.
def double(x):
    return x * 2

# Lambda function: This is an anonymous function that takes two inputs 'x' and 'y' and returns their sum.
# Lambda functions are used when you need a simple function for a short period of time, often in scenarios like:
# - Inline functions for better readability.
# - Passing small functions as arguments (e.g., in map, filter, or reduce).
sum = lambda x, y: x + y

# Calling the normal function 'double' with input 10. It will return 10 * 2 = 20.
print(double(10))

# Calling the lambda function 'sum' with inputs 10 and 20. It will return 10 + 20 = 30.
print(sum(10, 20))
