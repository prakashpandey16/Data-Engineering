list_A = [1,2,3,2,1]
print(list_A)
list_B = list_A.copy()
print(list_B)
list_B.reverse()
if(list_A==list_B):
    print("list is palindrome")
else:
    print("List is not palindrome")