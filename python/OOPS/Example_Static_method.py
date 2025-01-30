# Define a class named Math
class Math:
    # Constructor method (__init__) to initialize the object with a number
    def __init__(self, num):
        self.num = num  # Instance variable 'num' is set with the passed argument
    
    # Method to add a number to the instance's 'num' attribute
    def addToNum(self, num1):
        self.num = self.num + num1  # Adds 'num1' to the current value of 'num'
    
    # Static method to add two numbers (does not depend on the instance or class state)
    @staticmethod
    def add(a, b):
        return a + b  # Returns the sum of 'a' and 'b'

# Create an object of the Math class with initial value 10
obj = Math(10)

# Print the initial value of 'num' from the object
print(obj.num)  # Output: 10

# Call the addToNum method to add 10 to the instance's 'num'
obj.addToNum(10)

# Print the updated value of 'num' after calling addToNum
print(obj.num)  # Output: 20

# Call the static method 'add' to add 10 and 30 and print the result
# Static methods can be called using the object or directly using the class.
print(obj.add(10, 30))  # Output: 40
