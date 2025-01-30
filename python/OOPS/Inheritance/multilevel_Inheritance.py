# Base class
class Car:
    # Static method to start the car
    @staticmethod
    def start():
        print("Car is started.....")
    
    # Static method to stop the car
    @staticmethod
    def stop():
        print("Car is stopped.....")

# Derived class (inherits from Car)
class Maruti(Car):
    # Static method to display the company name
    @staticmethod
    def Company_name():
        print("Company name is Maruti Suzuki")

# Further derived class (inherits from Maruti, which in turn inherits from Car)
class Alto(Maruti):
    # Static method to display the brand name
    @staticmethod
    def brand_name():
        print("Alto is the brand name of Maruti Suzuki")
        
# Creating an object of the Alto class
car1 = Alto()

# Accessing methods from the Alto class and its parent classes
car1.Company_name()  # Method from Maruti class
car1.brand_name()    # Method from Alto class
car1.start()         # Method inherited from Car class
car1.stop()          # Method inherited from Car class

    
    