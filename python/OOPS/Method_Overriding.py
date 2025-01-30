# Define a base class named Shape
class Shape:
    # Constructor method to initialize dimensions of the shape
    def __init__(self, x, y):
        self.x = x  # Assign the first dimension to x
        self.y = y  # Assign the second dimension to y
    
    # Method to calculate the area of the shape (default behavior for a rectangle)
    def Area(self):
        return self.x * self.y  # Area = length * width (or x * y)

# Define a derived class named circle that inherits from Shape
class circle(Shape):
    # Constructor method to initialize a circle
    def __init__(self, radius):
        # Call the constructor of the Shape class with radius for both dimensions
        super().__init__(radius, radius)
    
    # Override the Area method to calculate the area of a circle
    def Area(self):
        # Use the area calculation from the base class and apply the formula for a circle
        return 3.14 * super().Area()  # Area = π * radius²

# Create an instance of Shape representing a rectangle with dimensions 10 x 20
rec = Shape(10, 20)
print(rec.Area())  # Output the area of the rectangle (200)

# Create an instance of circle with a radius of 10
cir = circle(10)
print(cir.Area())  # Output the area of the circle (314.0)
