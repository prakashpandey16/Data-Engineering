class Myclass:
    def __init__(self, value):
        # Constructor to initialize 'value' attribute
        self.value = value
    
    def show(self):
        # Method to display the current value of 'value'
        print(f"Value is : {self.value}")
        
    @property
    def getters(self):
        # Getter method to return 10 times the 'value' attribute
        return 10 * self.value
    
    @getters.setter
    def getters(self, new_value):
        # Setter method to update the 'value' attribute
        # It sets 'value' to be the new_value divided by 10
        self.value = new_value / 10

# Create an instance of Myclass with an initial value of 10
obj = Myclass(10)

# Call the show method to display the current value
obj.show()

# Set the 'getters' property, which triggers the setter
obj.getters = 67

# Print the 'getters' property, which triggers the getter
print(obj.getters)

# Call the show method again to see the updated value
obj.show()

        