# Define a class named Complex to represent complex numbers
class Complex:
    # Initialize the Complex object with real and imaginary parts
    def __init__(self, real, img):
        self.real = real  # Store the real part of the complex number
        self.img = img    # Store the imaginary part of the complex number

    # Method to display the complex number in a specific format
    def show_Number(self):
        # Print the complex number as "real i + img j"
        print(self.real, "i +", self.img, "j")
    
    # Function to add two complex numbers (commented out)
    # This function takes another Complex object (num2), adds their real and imaginary parts,
    # and returns a new Complex object representing the sum.
    # def add(self, num2):
    #     newReal = self.real + num2.real  # Add the real parts
    #     newImg = self.img + num2.img    # Add the imaginary parts
    #     return Complex(newReal, newImg)  # Return the new Complex object

    # Overriding the `+` operator using the __add__ dunder method
    def __add__(self, num2):
        # Add the real parts of the two complex numbers
        newReal = self.real + num2.real
        # Add the imaginary parts of the two complex numbers
        newImg = self.img + num2.img
        # Return a new Complex object representing the sum
        return Complex(newReal, newImg)

# Create a Complex object c1 with real part 3 and imaginary part 5
c1 = Complex(3, 5)
# Display the complex number c1 using the show_Number method
c1.show_Number()

# Create another Complex object c2 with real part 5 and imaginary part 8
c2 = Complex(5, 8)
# Display the complex number c2 using the show_Number method
c2.show_Number()

# Add c1 and c2 using the `+` operator, which internally calls the `__add__` method
# This creates a new Complex object c3 representing the sum of c1 and c2
c3 = c1 + c2
# Display the resulting complex number c3
c3.show_Number()
