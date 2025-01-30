# making calculator
def calculator(nnumber1,operator,number2):
    if operator == "+":
         return(number1+number2)
    elif operator =="-":
        return(number1-number2)
    elif operator == "*":
        return(number1*number2)
    elif operator =="/":
        return(number1/number2)
    elif operator =="//":
        return(number1//number2)
    elif operator =="%":
        return(number1%number2)
    else:
        return("Default operator")
    

number1 = int(input("Enter first number :"))
operator = input("Enter operator That you want to perform : ")
number2 = int(input("Enter second number : "))
result = calculator(number1,operator,number2)
print("The operations result are : ",result)


    

