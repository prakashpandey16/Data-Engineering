# Define a class named Circle to represent a circle and calculate its area and perimeter
class Circle:
    # Initialize the Circle object with a given radius
    def __init__(self, Radius):  # Corrected the method name from __int__ to __init__
        self.Radius = Radius  # Store the radius of the circle

    # Method to calculate and display the area of the circle
    def Area(self, pi=3.14):  # Default value of pi is 3.14
        # Calculate the area using the formula π * r^2
        area = (self.Radius * self.Radius * pi)
        # Print the calculated area
        print("The area of the circle is:", area)
    
    # Method to calculate and display the perimeter (circumference) of the circle
    def Perimeter(self, pi=3.14):  # Default value of pi is 3.14
        # Calculate the perimeter using the formula 2 * π * r
        perimeter = (2 * pi * self.Radius)
        # Print the calculated perimeter
        print("The perimeter of the circle is:", perimeter)

# Create an instance of the Circle class with a radius of 10
c1 = Circle(10)

# Call the Area method to calculate and display the area of the circle
c1.Area()

# Call the Perimeter method to calculate and display the perimeter of the circle
c1.Perimeter()
