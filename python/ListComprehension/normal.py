# What is List Comprehension in Python?
# List comprehension is a concise and elegant way to create lists in Python.
# It combines loops and conditional statements into a single line of code, 
# making it more readable and efficient than traditional loops.
# syntax
#   [expression for item in iterable if condition]
# example : square from 0 to 9
squares = [ x**2 for x in range(9)]
print(squares)
#  list comprehension with conditions
even_number =[x for x in range(10) if x%2==0]
print(even_number)

# nested loop with conditions
def cuboid_coordinates(x,y,z,n):
    return[[i,j,k] for i in range(x+1) for j in range(y+1) for k in range(z+1) if i+j+k!=n]


x = int(input())
y = int(input())
z = int(input())
n = int(input())
result = cuboid_coordinates(x,y,z,n)
print(result)
