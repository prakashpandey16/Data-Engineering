# simple list comprehension with loops
my_list = [i for i in range(5)]
print(my_list)
# list comprehension with conditions
My_list =[i for i in range(10) if i%2==0]
print(My_list)
# list comprehension with multiple conditions
my_List = [(i,j)for i in range(1,10,1) if i%2==0 for j in range(1,10,1) if j%2!=0]
print(my_List,end="\n")