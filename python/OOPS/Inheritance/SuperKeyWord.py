class Car:
    # Base class constructor to initialize company name and engine size
    def __init__(self, Company_name, engine_size):
        self.Company_name = Company_name
        self.engine_size = engine_size

class TATA(Car):
    # Subclass constructor to initialize brand name along with parent class attributes
    def __init__(self, Brand_name, Company_name, engine_size):
        # Call the parent class constructor to initialize inherited attributes
        super().__init__(Company_name, engine_size)
        self.Brand_name = Brand_name

# Creating an object of the TATA class
car1 = TATA("Harrier", "TATA", "15000cc")

# Accessing attributes
print(car1.Company_name)  # Output: TATA
print(car1.Brand_name)    # Output: Harrier
print(car1.engine_size)   # Output: 15000cc
