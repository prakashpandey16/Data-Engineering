def print_list(list,l,index = 0):
    if(index == l):
        return
    print(list[index])
    print_list(list,l,index+1)
list = [1,2,3,4,5,5,6,7]
print("List elements are in original order :")
print_list(list,len(list))