n = int(input("Enter a number : "))
def print_sum(n):
    if(n==0):
        return 0
    return n + print_sum(n-1)
    
result = print_sum(n)
print(result)