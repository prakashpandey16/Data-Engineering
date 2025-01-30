class Student:
    def __init__(self,name,marks):
        self.name = name
        self.marks = marks
        print("parametrized constructor is called")
s1 = Student("Prakash pandey",90)
print(s1.name)
print(s1.marks)
s2 = Student("Rahul singh",87)
print(s2.name)
print(s2.marks)