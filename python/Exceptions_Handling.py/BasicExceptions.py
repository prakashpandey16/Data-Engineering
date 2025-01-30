# exceptions handling in python 
try:
    n = int(input("Enter the index of the list element you want to print: "))
except ValueError:
    # Handle the case where the input is not a valid integer
    print("Invalid input! Please enter a valid integer.")
else:
    # Define the list with sample elements
    my_list = [1, 2, 3]

    try:
        # Attempt to print the element at the user-specified index
        print(my_list[n])
    except IndexError:
        # Handle the case where the index is out of the list's range
        print("Index out of bound error! Please enter a valid index.")
    except Exception as e:
        # Handle any other unexpected exceptions
        print(f"An unexpected error occurred: {e}")
