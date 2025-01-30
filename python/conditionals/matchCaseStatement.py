#  making calculator using match case statement in python
a = int(input("Enter first Number : "))
b = int(input("Enter second Number :"))
operator = input("Enter operator that you want to perform : ")
match operator:
    case("+"):
        print(a+b)
    case("-"):
        print(a-b)
    case("*"):
        print(a*b)
    case("/"):
        print(a/b)
    case _:
        print("Invalid operands")
        
        
