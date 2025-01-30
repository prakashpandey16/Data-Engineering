class SecretLanguage:
    # Here, string represents a message to encode or decode
    def __init__(self, string):
        self._string = string  # Make string private
    
    @property
    def string(self):
        """Getter for the string attribute."""
        return self._string
    
    @string.setter
    def string(self, new_string):
        """Setter for the string attribute with validation."""
        # isinstance() is a built-in Python function used to check if an object is an instance of a
        # particular class or a tuple of classes. It's commonly used for type checking in Python.
        if isinstance(new_string, str):
            self._string = new_string
        else:
            raise ValueError("String must be a valid text (str).")
    
    def coding(self):
        length = len(self._string)
        if length >= 3:
            # Move the first character to the end
            first_character = self._string[0]
            self._string = self._string[1:] + first_character
            # Add "emf" at the start and "pic" at the end
            self._string = "emf" + self._string + "pic"
        else:
            # Reverse the string for short messages
            self._string = self._string[::-1]
        return self._string
    
    def Decode(self):
        length = len(self._string)
        if length < 3:
            # Reverse the string for short messages
            self._string = self._string[::-1]
        else:
            # Remove "emf" from the start and "pic" from the end
            self._string = self._string[3:-3]
            # Move the last character back to the start
            last_character = self._string[-1]
            self._string = last_character + self._string[:-1]
        return self._string

def main():
    print("Hey, welcome! What do you want to do? Code or decode a message?")
    print("If code, enter 1. If decode, enter 2.")
    try:
        n = int(input("Enter your preference: "))
        if n not in [1, 2]:
            print("Invalid choice! Please enter 1 for coding or 2 for decoding.")
            return
        
        message = input("Enter your message: ")
        m1 = SecretLanguage(message)
        
        if n == 1:
            print(f"Your coded message is: {m1.coding()}")
        else:
            print(f"Your decoded message is: {m1.Decode()}")
    except ValueError:
        print("Invalid input! Please enter a valid numeric value (1 or 2).")

if __name__ == "__main__":
    main()
         
             
            
            
        
        