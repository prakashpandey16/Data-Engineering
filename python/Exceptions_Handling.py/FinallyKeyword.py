my_list = [1, 2, 3, 4]

# Try to get an integer input from the user
try:
    n = int(input("Enter an index: "))
    print(my_list[n])  # Attempt to access the list element directly
except ValueError:
    print("Invalid input! Please enter an integer.")
except IndexError:
    print("Index out of range! Please enter a valid index.")
finally:
    print("I always run, whether an error occurred or not!")
   
 