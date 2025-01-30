class person:
    # Class attribute (shared across all instances of the class)
    name = "anonymous"
    
    # Constructor method
    def __init__(self, name):
        # Option 1: Uncommenting this line would modify the class attribute directly for all instances
        # self.__class__.name = name 
        
        # Option 2: Uncommenting this line would create or modify an instance attribute, 
        # specific to the object being created.
        # self.name = name
        
        # Option 3: Modifying the class attribute directly using the class name
        person.name = name

# Creating an instance of the person class
p1 = person("Rahul singh")

# Accessing the 'name' attribute through the instance
print(p1.name)  # Outputs: "Rahul singh"

# Accessing the 'name' attribute through the class
print(person.name)  # Outputs: "Rahul singh"
