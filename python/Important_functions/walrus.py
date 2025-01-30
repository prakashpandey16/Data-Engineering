# The Walrus Operator in Python
# The Walrus Operator is a new addition to Python 3.8 and
# allows you to assign a value to a variable within an expression. 
# This can be useful when you need to use a value multiple times in a loop, 
# but don't want to repeat the calculation.
# The Walrus Operator (:=) is used here to assign a value to the variable `food` 
# and check its condition in a single expression within the `while` loop.

foods = list()  # Initialize an empty list to store the food items entered by the user.

# A while loop to repeatedly prompt the user to input their favorite foods.
# The condition uses the Walrus Operator to both assign the user's input to the variable `food`
# and check if the input is not equal to "Quit".
while (food := input("Enter food that you like: ")) != "Quit":
    foods.append(food)  # Add the user's input to the `foods` list.

# After exiting the loop (when "Quit" is entered), print the list of all foods entered.
print(foods)
