def print_fact(n):
    fact = 1
    for i in range(1,n+1,1):
        fact *=i
    return fact
    
n = int(input("Enter a Number :"))
result = print_fact(n)
print(result)