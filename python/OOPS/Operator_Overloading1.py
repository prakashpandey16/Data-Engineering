# Define a class named Vector to represent a 3D vector
class Vector:
    # Constructor method to initialize the vector components
    def __init__(self, i, j, k):
        self.i = i  # The x-component of the vector
        self.j = j  # The y-component of the vector
        self.k = k  # The z-component of the vector
    
    # Method to return a string representation of the vector
    def Show(self):
        return f"{self.i}i + {self.j}j + {self.k}k"  # Format: xi + yj + zk
    
    # Method to add two vectors using the + operator (overriding __add__)
    def __add__(self, x):
        # Create a new vector whose components are the sum of the corresponding components
        return Vector(self.i + x.i, self.j + x.j, self.k + x.k)

# Create the first vector instance with components (2, 4, 6)
v1 = Vector(2, 4, 6)
print(v1.Show())  # Output: 2i + 4j + 6k

# Create the second vector instance with components (2, 4, 6)
v2 = Vector(2, 4, 6)
print(v2.Show())  # Output: 2i + 4j + 6k

# Add the two vectors using the + operator, which calls the __add__ method
result = v1 + v2
print(result.Show())  # Output: 4i + 8j + 12k

# Check the type of the result
print(type(result))  # Output: <class '__main__.Vector'>
