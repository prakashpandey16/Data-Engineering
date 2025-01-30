class Person:
    # Private attribute, accessible only within the class
    __name = "anonymous"
    
    # Private method, accessible only within the class
    def __hello(self):
        print("Welcome Prakash Pandey")
        
    # Public method to access the private method
    def welcome(self):
        # Calling the private method from within the class
        self.__hello()

# Creating an instance of the Person class
prakash = Person()

# This line is commented out because private methods cannot be accessed directly
# prakash.__hello()

# Calling the public method that internally calls the private method
prakash.welcome()

# Note:
# To make an object (instance of a class) private in Python, you typically define it within another class 
# and restrict access to it. This ensures that the object cannot be accessed directly from outside the class.

class PrivateObjectWrapper:
    def __init__(self):
        # Create a private object of the Person class
        self.__private_person = Person()
    
    def access_private_object(self):
        # Provide a method to interact with the private object
        self.__private_person.welcome()

# Example usage:
wrapper = PrivateObjectWrapper()

# This is allowed because the method `access_private_object` interacts with the private object
wrapper.access_private_object()

# This is not allowed because `__private_person` is private to the wrapper class
# print(wrapper.__private_person)
