n = int(input("Enter a Number :"))
def Print_fact(n):
    if(n==0 or n==1):
       return 1
    else:
        return n*(Print_fact(n-1))

result = Print_fact(n)
print(result)
