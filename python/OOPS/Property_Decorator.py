# Define a class named Student
class Student:
    # Initialize the Student object with marks for java, cpp, and python
    def __init__(self, java, cpp, python):
        self.java = java  # Store the marks for Java
        self.cpp = cpp    # Store the marks for C++
        self.python = python  # Store the marks for Python
        # Uncommenting the line below would calculate and store the percentage as a fixed string during initialization
        # self.percentage = str((java + cpp + python) / 3) + "%"
        
    # Uncommenting this method would make percentage a method, which when called calculates and returns the percentage dynamically
    # def percentage(self):
    #     return str((self.java + self.cpp + self.python) / 3) + "%"
    
    # Use @property decorator to define a getter for percentage that calculates it dynamically
    @property
    def percentage(self):
        # Calculate and return the percentage as a string whenever accessed
        return str((self.java + self.cpp + self.python) / 3) + "%"

# Create an instance of the Student class with initial marks for java, cpp, and python
prakash = Student(90, 94, 97)

# Access and print the percentage using the @property getter (calculated dynamically)
print(prakash.percentage)

# Update the marks for Java
prakash.java = 95

# Since percentage is a dynamic property, it reflects the updated marks
# Print the percentage again, which recalculates the value with the updated marks
print(prakash.percentage)

