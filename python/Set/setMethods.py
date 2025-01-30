# Creating an empty set
my_set = set()

# Adding elements to the set
my_set.add(10)  # Adds 10 to the set
my_set.add(20)  # Adds 20 to the set
my_set.add(30)  # Adds 30 to the set
my_set.add(40)  # Adds 40 to the set
print(my_set)  # Output: {40, 10, 20, 30} (Set elements may appear in any order)

# Removing an element from the set
my_set.remove(40)  # Removes the element 40 from the set
print(my_set)  # Output: {10, 20, 30}

# Clearing all elements from the set
my_set.clear()  # Empties the set
print(my_set)  # Output: set() (an empty set)

# Creating a set with mixed data types
Set = {1, 2, 3, "Hello", "Prakash", "pandey"}  # Set with integers and strings

# Removing and returning an arbitrary element from the set using pop()
print(Set.pop())  # Output: An arbitrary element (sets are unordered)
print(Set.pop())  # Output: Another arbitrary element

# Checking the type of the set
print(type(Set))  # Output: <class 'set'>
