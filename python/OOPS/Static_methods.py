class Student:
    def __init__(self, name, marks):
        # Constructor to initialize instance attributes: name and marks
        self.name = name
        self.marks = marks
        
    @staticmethod
    # The @staticmethod decorator is used to define a static method.
    # Static methods do not require access to the instance or class attributes.
    # They are used when the method's functionality is independent of the instance
    # and can be called directly using the class or instance.
    def welcome():
        # This method prints a greeting message and does not require 'self' as it's not tied to an instance
        print("Hello Prakash Pandey")
    

# Creating an instance of the Student class
s1 = Student("Karan", 78)

# Correctly calling the static method using the class name
Student.welcome()  # Static methods are usually called on the class itself

# Alternatively, you can also call it using the instance, though this is not common for static methods
s1.welcome()  # Static methods can be called on an instance, but it's not necessary or typical
