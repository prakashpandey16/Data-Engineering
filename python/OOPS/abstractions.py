class Car:
    def __init__(self):
        # Encapsulation: Hiding internal details by defining attributes inside the class
        # These attributes represent the state of the car but are not accessible directly.
        self.acc = False  # Accelerator state
        self.clutch = False  # Clutch state
        self.Break = False  # Break state
    
    def start(self):
        # Abstraction: Hiding the complex logic of starting a car and exposing a simple interface.
        # The user only needs to call 'start()' without worrying about internal details.
        self.clutch = True  # Engaging clutch
        self.acc = True  # Pressing accelerator
        print("Car started......")
        
# Create an instance of the Car class
car1 = Car()

# Start the car (abstracted method)
car1.start()

        