# Define the Person class
class Person:
    # The __init__ method is the constructor that initializes the object
    def __init__(self, name, age):
        # Initialize the instance variables with the values passed to the constructor
        self.name = name  # Assign the name argument to the instance variable 'name'
        self.age = age    # Assign the age argument to the instance variable 'age'
        
        # Print a message displaying the name and age of the person
        print(f"The Name of Person is {self.name} and age is {self.age}")

# Create an instance (object) of the Person class
# This will call the __init__ method and print the person's details
c1 = Person("Prakash", 20)
