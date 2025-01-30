class Employee:
    def __init__(self, role, department, salary):
        self.role = role
        self.department = department
        self.salary = salary

    def show_Details(self):
        print("The role of the employee is:", self.role)
        print("The department of the employee is:", self.department)
        print("The salary of the employee is:", self.salary)


class Engineer(Employee):
    def __init__(self, name, age, role, department, salary):
        super().__init__(role, department, salary)
        self.name = name
        self.age = age


# Creating Employee objects
e1 = Employee("Software Engineer", "IT", 100000)
e1.show_Details()

e2 = Employee("AI Engineer", "AI", 150000)
e2.show_Details()

# Creating Engineer object
prakash = Engineer("Prakash Pandey", 20, "Machine Learning Engineer", "AI", 170000)
print("\nDetails of Engineer:")
print("The Name of the Employee is:", prakash.name)
print("The age of the Employee is:", prakash.age)
print("The role of the Employee is:", prakash.role)
print("The department of the Employee is:", prakash.department)
print("The salary of the Employee is:", prakash.salary)
