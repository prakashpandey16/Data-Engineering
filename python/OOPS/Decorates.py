# Define a decorator function 'greet' that takes a function 'fx' as an argument
def greet(fx):
    # Define a wrapper function 'mfx' that will enhance the behavior of 'fx'
    def mfx(*args, **kwargs):
        # Print a greeting message before calling the original function
        print("Good Morning")
        # Call the original function with any arguments and keyword arguments
        fx(*args, **kwargs)
        # Print a thank you message after calling the original function
        print("Thanks for using this function")
    # Return the wrapper function
    return mfx

# Apply the 'greet' decorator to the 'hello' function
@greet
def hello():
    # Print a message from the 'hello' function
    print("Hello world")

# Apply the 'greet' decorator to the 'add' function
@greet
def add(a, b):
    # Print the sum of 'a' and 'b'
    print(a + b)

# Call the 'hello' function, which is now wrapped by the 'greet' decorator
hello()
# Output:
# Good Morning
# Hello world
# Thanks for using this function

# Call the 'add' function with arguments 1 and 2, which is also wrapped by the 'greet' decorator
add(1, 2)
# Output:
# Good Morning
# 3
# Thanks for using this function
