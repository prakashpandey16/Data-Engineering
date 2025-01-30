# In Python, access specifiers are not mandatory. 
# They are just conventions used to indicate how members should be accessed.
# Python does not enforce access control as strictly as languages like Java or C++.

class Myclass:
    # Constructor method (__init__) that initializes the object
    def __init__(self):
        self.name = "Prakash pandey"  # Public member (accessible directly)
        self.__surname = "Pandey"     # Private member (name mangling applies)
        self._middle_name = "Chandra" # Protected member (by convention)

# Create an object of Myclass
obj = Myclass()

# Access and print the public member 'name' directly
# In Python, by convention, public members can be accessed directly
print(obj.name)

# Access the private member '__surname' using name mangling
# Private members (with double underscores) are not directly accessible.
# Python changes the variable name to '_Myclass__surname' to avoid accidental access.
print(obj._Myclass__surname)

# Access and print the protected member '_middle_name'
# Protected members (with a single underscore) are meant to indicate 
# that they should not be accessed directly outside the class.
# But they can still be accessed if needed.
print(obj._middle_name)
