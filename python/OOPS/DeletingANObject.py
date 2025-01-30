class student:
    def __init__(self,name):
         self.name = name

s1 = student("Prakash")
print(s1.name)
del s1.name # used for deleting an attribute of an object
del s1 # used for deleting whole object
print(s1.name)