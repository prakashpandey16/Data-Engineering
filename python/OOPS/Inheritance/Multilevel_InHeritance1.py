# Base class Vehicle
class Vehicle:
    def __init__(self, engine, tyresize, power):
        self.engine = engine  # Engine capacity in cc
        self.tyresize = tyresize  # Tyre size in inches
        self.power = power  # Power in horsepower (hp)
    
    # Method to display details of the vehicle
    def show_details(self):
        print(f"Engine capacity is {self.engine}cc")
        print(f"Tyresize is {self.tyresize} inches")
        print(f"Power is {self.power} hp")

# Intermediate class Car that inherits from Vehicle
class Car(Vehicle):
    def __init__(self, engine, tyresize, power, sitting_capacity):
        # Initialize the parent class attributes using super()
        super().__init__(engine, tyresize, power)
        self.sitting_capacity = sitting_capacity  # Sitting capacity of the car
    
    # Method to display details of the car
    def show_details(self):
        super().show_details()  # Call the parent class method
        print(f"Sitting Capacity is {self.sitting_capacity}")

# Derived class Maruti_car that inherits from Car
class Maruti_car(Car):
    def __init__(self, engine, tyresize, power, sitting_capacity, mileage):
        # Initialize the parent class attributes using super()
        super().__init__(engine, tyresize, power, sitting_capacity)
        self.mileage = mileage  # Mileage in km/l
    
    # Method to display details of the Maruti car
    def show_details(self):
        super().show_details()  # Call the parent class method
        print(f"Maruti car Mileage is {self.mileage} km/l")

# Create an instance of Maruti_car with specific attributes
Brezza = Maruti_car(1200, 17, 110, 5, 18)

# Call the show_details method to display all details
Brezza.show_details()
