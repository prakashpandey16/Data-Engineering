# Creating a dictionary with some initial data
dict = {
    "Name": "Prakash Pandey",  # Key "Name" with value as a string
    "Age": 19,  # Key "Age" with value as an integer
    "marks": [90, 98, 87, 89],  # Key "marks" with value as a list
}

# Printing all the keys in the dictionary
print(dict.keys())  # Output: dict_keys(['Name', 'Age', 'marks'])

# Printing the total number of key-value pairs in the dictionary
print(len(dict))  # Output: 3

# Printing all the values in the dictionary
print(dict.values())  # Output: dict_values(['Prakash Pandey', 19, [90, 98, 87, 89]])

# Printing all the key-value pairs as tuples
print(dict.items())  # Output: dict_items([('Name', 'Prakash Pandey'), ('Age', 19), ('marks', [90, 98, 87, 89])])

# Accessing a non-existent key "Surname" using indexing
# print(dict["Surname"])  # This would raise a KeyError because "Surname" does not exist in the dictionary

# Accessing a non-existent key "Surname" using the get() method
print(dict.get("Surname"))  # Output: None (does not raise an error)

# Adding a new key-value pair from another dictionary
my_dict = {"city": "Jaipur"}  # A dictionary with a new key "city"
dict.update(my_dict)  # Merging the two dictionaries
print(dict)  # Output: {'Name': 'Prakash Pandey', 'Age': 19, 'marks': [90, 98, 87, 89], 'city': 'Jaipur'}

# Converting the keys of the dictionary into a list
print(list(dict.keys()))  # Output: ['Name', 'Age', 'marks', 'city']
