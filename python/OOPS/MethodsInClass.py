class student:
    # Class attribute: Shared by all instances of the class
    college_name = "ssjpgc"
    
    def __init__(self, name, marks, grade):
        # Instance attributes: Specific to each object created
        self.name = name
        self.marks = marks
        self.grade = grade
    
    def welcome(self):
        # Instance method: Prints a welcome message with the student's name
        print("Welcome", self.name)
    
    def get_marks(self):
        # Instance method: Returns the marks of the student
        return self.marks

# Creating an instance of the student class
s1 = student("karan", 89, "A+")

# Accessing and printing the class attribute 'college_name'
print(student.college_name)  # Accessed through the class itself

# Calling the 'welcome' method (no need to print it since it already prints internally)
s1.welcome()  # Prints: "Welcome karan"

# Accessing and printing instance attributes
print(s1.marks)  # Prints: 89
print(s1.grade)  # Prints: "A+"

# Calling 'get_marks' method and printing the result
print("Marks of student is : ", s1.get_marks())  # Prints: "Marks of student is : 89"
   