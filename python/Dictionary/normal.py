# Creating a dictionary with keys and values
dict = {
    "key": "value",  # A generic key-value pair
    "name": "Prakash",  # Name of the person
    "age": 19,  # Age of the person
    "subject": ["java", "c++", "Python", "DSA"],  # List of subjects
}

# Printing the entire dictionary
print(dict)

# Accessing and printing the value associated with the key "name"
print(dict["name"])

# Accessing and printing the list of subjects
print(dict["subject"])

# Updating the value of the key "name"
dict["name"] = "Prakash Pandey"

# Adding a new key-value pair to the dictionary
dict["surname"] = "Pandey"

# Printing the updated dictionary
print(dict)
