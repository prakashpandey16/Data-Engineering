class Student:
    # Class attribute: Shared by all instances of the class. 
    # Stored in memory once, regardless of how many objects are created.
    college_name = "Abcde"
    name = "Null name"
    
    def __init__(self, name, marks):
        # Object attributes: Each instance of the class has its own copy of these attributes.
        # They can change according to the object created.
        # object attribute > class attribute
        self.name = name 
        self.marks = marks

# Creating an instance of the Student class with name "Karan" and marks 89
s1 = Student("Karan", 89)

# Accessing and printing the object attributes (specific to the instance 's1')
print(s1.name)         # Prints the name of the student: "Karan"
print(s1.marks)        # Prints the marks of the student: 89

# Accessing and printing the class attribute (shared across all instances)
print(s1.college_name) # Prints the class attribute: "Abcde"

# Creating another instance of the Student class with name "Divya" and marks 87
s2 = Student("Divya", 87)

# Accessing and printing the object attributes (specific to the instance 's2')
print(s2.name)         # Prints the name of the student: "Divya"
print(s2.marks)        # Prints the marks of the student: 87

# Accessing and printing the class attribute directly via the class name (this is the same for all instances)
print(Student.college_name)  # Prints the class attribute: "Abcde"


