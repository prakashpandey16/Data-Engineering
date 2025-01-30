# Example of multiple inheritance

# Base class Human
class Human:
    @staticmethod
    def eat():
        print("I can eat")  # Human has the ability to eat

    @staticmethod
    def run():
        print("I can run also")  # Human has the ability to run

# Base class Animal
class Animal:
    @staticmethod
    def bark():
        print("I can bark")  # Animal has the ability to bark

# Derived class Dog inherits from both Human and Animal
class Dog(Human, Animal):
    def __init__(self, name):
        self.name = name  # Assign the name of the dog to the instance variable

    # Method to show details about the dog and its abilities
    def Show_Details(self):
        print(f"Dog Name is {self.name}")  # Display the dog's name
        self.eat()  # Call the eat method from the Human class
        self.run()  # Call the run method from the Human class
        self.bark()  # Call the bark method from the Animal class

# Create an instance of the Dog class with the name "Bruno"
d1 = Dog("Bruno")
# Call the Show_Details method to display the dog's details and abilities
d1.Show_Details()
    