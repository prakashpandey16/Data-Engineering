# Define a class named Employee
class Employee:
    # Class-level attributes
    Company_name = "Apple"  # Default company name
    Numofemployees = 0  # Default number of employees (class attribute)
    
    # Constructor method (__init__) to initialize the object
    def __init__(self, name):
        self.name = name  # Instance attribute 'name'
        self.raise_amount = 0.2  # Instance attribute 'raise_amount'
        Employee.Numofemployees += 1  # Increment the class-level attribute 'Numofemployees'
    
    # Method to display employee details
    def show(self): 
        # Print employee details, including class-level and instance-level attributes
        print(f"The name of employee is {self.name}, company name is {self.Company_name}, "
              f"also number of employees is {Employee.Numofemployees}, and raise amount is {self.raise_amount}")

# Create an instance of Employee class for "Rahul Singh"
rahul = Employee("Rahul Singh")
rahul.show()  # Display Rahul's details

# Change the class-level company name to "Google"
Employee.Company_name = "Google"

# Create another instance of Employee class for "Prakash Pandey"
prakash = Employee("Prakash Pandey")
prakash.raise_amount = 0.5  # Change Prakash's raise amount to 0.5
prakash.show()  # Display Prakash's details

    