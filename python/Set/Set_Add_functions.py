# Initialize an empty set to store unique elements
my_set = set()

# Prompt the user to enter the number of elements they want to add to the set
n = int(input("Enter length of set: "))

# Loop to read 'n' elements from the user
for i in range(n):
    # Input each element (as an integer) from the user
    # always provide input  line by line
    element = int(input(f"Enter element {i + 1}: "))
    # Add the element to the set (duplicates will be ignored automatically)
    my_set.add(element)

# Print the resulting set of unique elements
print("The set is:", my_set)

# Print the total number of unique elements in the set
print("The number of unique elements is:", len(my_set))
