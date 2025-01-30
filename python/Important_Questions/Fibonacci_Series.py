# print fibonacci series for first 10 element
a,b = 0,1
for _  in range(10):
    print(a,end=" ")
    a,b= b,a+b
