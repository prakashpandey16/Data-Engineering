list = ["Hello ji","Prakash","pandey","Python"]
def print_list(list,l):
    if(l==0):
        return 0
    print(list[l-1]) 
    print_list(list,l-1)
print("List Element are reverse order :")
n = len(list)
print_list(list,n)
