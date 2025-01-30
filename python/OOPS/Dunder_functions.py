# Define a class named Employee
class Employee:
    # Constructor method to initialize an instance of the Employee class
    def __init__(self, name):
        self.name = name  # Attribute to store the name of the employee
    
    # Define the __len__ method to calculate the length of the employee's name
    def __len__(self):
        i = 0  # Initialize a counter
        for c in self.name:  # Loop through each character in the name
            i += 1  # Increment the counter
        return i  # Return the total length of the name
    
    # Define the __str__ method to return a user-friendly string representation
    def __str__(self):
        return f"The Name of employee is {self.name} str"  # Custom message
    
    # Define the __repr__ method to return a developer-friendly string representation
    def __repr__(self):
        return f"Employee ('{self.name}')"  # Output format for debugging or logs
    
    # Define the __call__ method to make an instance callable like a function
    def __call__(self):
        print("I am calling call dunder functions")  # Custom message when the object is called

# Create an instance of the Employee class with the name "Prakash"
e = Employee("Prakash")

# The following line is commented out; it would print the employee's name
# print(e.name)

# The following line is commented out; it would print the length of the employee's name using the __len__ method
# print(len(e))

# Print the string representation of the Employee object using the __str__ method
print(str(e))

# Print the developer-friendly representation of the Employee object using the __repr__ method
print(repr(e))

# Call the Employee object like a function, which triggers the __call__ method
e()
