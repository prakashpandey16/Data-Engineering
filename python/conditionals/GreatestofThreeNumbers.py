a = int(input("Enter first Number:"))
b = int(input("Enter second Number:"))
c = int(input("Enter third Number:"))
if(a>b and a>c):
    print(str(a)+" is greatest number")
elif(b>a and b>c):
    print(str(b)+" is greatest number")
else:
    print(str(c)+" is greatest number")
