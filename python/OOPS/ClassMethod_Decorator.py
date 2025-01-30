class Person:
    # Class attribute shared by all instances
    name = 'anonymous'

    @classmethod
    def change_name(cls, name):
        # Class method to change the class attribute 'name'
        cls.name = name

# Attempt to create an instance of Person with an argument
p1 = Person("Prakash pandey")

# Print the 'name' attribute of the instance 'p1'
print(p1.name)

# Print the 'name' attribute of the class 'Person'
print(Person.name)
