# class Person:
#     name ="prakash"
#     occupations = "AI Engineer"
#     networth = "100 M$"
#     def info(self):
#         print(f"{self.name} is a {self.occupations}")

# a = Person()
# a.name = "Rahul"
# a.occupations = "MD"
# a.networth = "80 M$"
# a.info()
# prakash = Person()
# prakash.name = "Prakash Pandey"
# prakash.occupations = "CEO"
# prakash.info()


# class Person:
#     name = "default name"
#     occupations = "default occupations"
#     # default constructor automatically called when object is created
#     def __init__(self):
#         print("Hey This is me prakash pandey")
    
#     # parametrized constrructor
#     def __init__(self,name,occupations):
#         self.name = name
#         self.occupations = occupations
        
#     def info(self):
#      print(f"{self.name} is {self.occupations} of this company.")
        
# rahul =Person("Rahul Singh","MD")
# rahul.info()

# decoraters example
# def greet(fx):
#     def Wrapper1(*args,**kwargs):
#         print("Welcome")
#         fx(*args,**kwargs)
#         print("Thanks for using this functions")
#     return Wrapper1
# @greet
# def add(a,b):
#     print(a+b)

# add(10,20)
        
        
# getters and setters
# class Myclass:
#     def __init__(self,value):
#         self.value = value
    
#     def show(self):
#         print(f"Value is : {self.value}")
#     @property
#     def get_value(self):
#        return 10*self.value
#     @get_value.setter
#     def get_value(self,new_value):
#         self.value = new_value/10
    
# obj = Myclass(10)
# obj.show()
# obj.get_value = 67
# print(obj.get_value)
# obj.show()

# inheritance
# class Employee:
#     def __init__(self,Employee_Name,Employee_Id):
#         self.Employee_Name = Employee_Name
#         self.Employee_Id = Employee_Id
#     def show(self):
#         print(f"Employee Name is {self.Employee_Name} and Id is {self.Employee_Id}")
    
# class Programmer(Employee):
#     def __init__(self, Employee_Name, Employee_Id,Role):
#         super().__init__(Employee_Name, Employee_Id)
#         self.Role = Role
#     def show(self):
#         super().show()
#         print(f"Employee role is {self.Role}")
        
    
    
# # rahul = Employee("Rahul Singh","Abc111")
# # rahul.show()
# rahul = Programmer("Rahul Singh","Abc111","Co-Founder")
# rahul.show()


# class method 
# class Change:
#     name = "anonymous"
    
#     @classmethod
#     def change_name(cls,name):
#         cls.name = name
    
# obj = Change()
# obj.change_name("Prakash")
# print(obj.name)

        



    
        
    
        

        




    