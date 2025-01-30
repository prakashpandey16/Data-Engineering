# single inheritance 
class Car:
    # Static method: Can be called without creating an instance of the class
    @staticmethod
    def start():
        print("Car started.....")
        
    # Static method: Can be called without creating an instance of the class
    @staticmethod
    def stop():
        print("Car stopped.....")

# Toyotacar class inherits from Car
class Toyotacar(Car):
    # Constructor method to initialize the object with a name attribute
    def __init__(self, name):
        self.name = name

# Creating an instance of Toyotacar with the name "Fortuner"
car1 = Toyotacar("Fortuner")

# Accessing and printing the name attribute
print(car1.name)

# Calling the static methods inherited from the Car class
car1.start()
car1.stop()

    

      
