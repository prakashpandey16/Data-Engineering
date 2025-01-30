# Define a class named Person
class Person:
    # Initialize the Person object with name, age, and surname attributes
    def __init__(self, name, age, surname):
        self.name = name        # Assign the name to the object
        self.age = age          # Assign the age to the object
        self.surname = surname  # Assign the surname to the object

# Create an instance of the Person class
p1 = Person("Rahul", 19, "Pandey")

# Use the help() function to display information about the Person class
help(Person)

# Explanation of help():
# The help() function provides a detailed description of the object or class.
# It includes the class docstring (if provided), available methods, and their docstrings.
# In this case, it will show details about the Person class and its __init__ method.
