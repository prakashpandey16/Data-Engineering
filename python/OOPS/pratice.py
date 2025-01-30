class Student:
    def __init__(self, name, my_list):
        # Constructor to initialize the student's name and marks list
        self.name = name
        self.my_list = my_list
    
    def average_marks(self, marks_list):
        # Method to calculate the average marks from the provided list
        total_sum = 0
        total_subject = len(marks_list)
        for i in range(len(marks_list)):
            total_sum += marks_list[i]
        return total_sum / total_subject

# Marks list
marks = [89, 86, 94]

# Creating an instance of the Student class with a name and marks list
s1 = Student("Karan", marks)

# Accessing the name of the student
print("Name of student is :", s1.name)

# Calling the 'average_marks' method using the instance s1 and passing the marks list
result = s1.average_marks(marks)

# Printing the average marks of the student
print("Average of marks of student is:", result)
