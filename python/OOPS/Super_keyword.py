# Define a Parent class
class Parentclass:
    def __init__(self, name, age, surname):
        self.name = name        # Assign the name to the object
        self.age = age          # Assign the age to the object
        self.surname = surname  # Assign the surname to the object
    
    # Method to print a message from the parent class
    def Print_class(self):
        print("This is a parent class")

# Define a Child class that inherits from Parentclass
class ChildClass(Parentclass):
    def __init__(self, name, age, surname, salary):
        # Use super() to call the parent class's __init__ method
        super().__init__(name, age, surname)
        self.salary = salary  # Assign the salary to the child object
    
    # Method to print messages from both parent and child classes
    def print_child_class(self):
        # Use super() to call a method from the parent class
        super().Print_class()  
        print("This is a child class")

# Create an object of the ChildClass with specific values
p1 = ChildClass("Prakash", 19, "Pandey", 1200000)

# Call the Print_class method from the parent class using the child class object
p1.Print_class()

# Call the print_child_class method from the child class
p1.print_child_class()
