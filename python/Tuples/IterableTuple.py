def print_number(*number): # here we create a number as iterable with the help of *
    for i in number:
        print(i,end=" ")

print_number(1,2,3,4,5,5,6)