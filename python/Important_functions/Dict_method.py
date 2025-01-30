# Define a class named Person
class Person:
    # Initialize the Person object with name, age, and surname attributes
    def __init__(self, name, age, surname):
        self.name = name        # Assign the name to the object
        self.age = age          # Assign the age to the object
        self.surname = surname  # Assign the surname to the object

# Create an instance of the Person class with specific attribute values
p1 = Person("Rahul", 19, "Singh")

# Print the __dict__ attribute of the object
print(p1.__dict__)

# Explanation of __dict__:
# The __dict__ attribute is a dictionary that stores all the attributes of an object.
# It maps attribute names (keys) to their values for the specific object.
# In this case, it will output:
# {'name': 'Rahul', 'age': 19, 'surname': 'Singh'}
