def main():
    # List of marks
    marks = [10, 13, 76, 89, 87, 42, 24, 91, 34]
    
    # Normal way of iterating over the list (without using enumerate)
    # You would have to manually maintain an index variable
    index = 0
    for mark in marks:
        print(mark)  # Prints each mark
        if(index == 3):  # Check if it's the fourth mark (index 3)
            print("awesome prakash!")  # Special message at index 3
        index += 1  # Increment the index manually
    
    # With the help of enumerate, we can avoid manually maintaining the index
    # Enumerate returns both the index and the value (mark) in the list
    # This is more Pythonic and clean
    print("\n\n")
    for index, mark in enumerate(marks):
        print(mark)  # Prints each mark
        if(index == 3):  # Check if it's the fourth mark (index 3)
            print("Awesome prakash!")  # Special message at index 3

    # Using enumerate with strings
    # We use enumerate here to get both the index (starting from 1) and the fruit name
    print("\n\n")
    my_list = ["Apple", "Banana", "Orange", "Papaya"]
    
    # The enumerate function takes an optional 'start' argument that specifies where to start the index.
    # By default, the index starts at 0, but here we start it at 1.
    for index, list_item in enumerate(my_list, start=1):
        print(index, list_item)  # Prints the index and the fruit name, starting from index 1
    
        
if __name__ == "__main__":
    main()
