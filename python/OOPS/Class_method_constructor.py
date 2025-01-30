# Define a class named Employee
class Employee:
    # Constructor method (__init__) to initialize name and salary for an employee
    def __init__(self, name, salary):
        self.name = name  # Instance variable to store the name of the employee
        self.salary = salary  # Instance variable to store the salary of the employee

    # Class method to create an Employee object from a string
    @classmethod
    def fromStr(cls, string):
        # Split the input string by the "-" character
        # Extract name and salary from the string, and create a new Employee object
        return cls(string.split("-")[0], int(string.split("-")[1]))

# Create an Employee object directly using the constructor
e1 = Employee("Prakash", 120000)

# Print details of the first employee
print(e1.name)  # Output: Prakash
print(e1.salary)  # Output: 120000

# Create an Employee object using the class method 'fromStr'
e2 = Employee.fromStr("Rahul-120000")

# Print details of the second employee
print(e2.name)  # Output: Rahul
print(e2.salary)  # Output: 120000
   
    