# concatnations in string can be done with the help of +(Operator)
First_name = "prakash"
Last_name = "Pandey"
Full_name = First_name+" "+Last_name
print("Full name is :",Full_name)
# lenth of a string can be calculated using len(str) 
length = len(Full_name)
print("Lenth of string is:",length)
# indexing in string
# we can print character of string using indexing but can not manupulate them
name = "Prakash"
ch = name[0] 
print(ch)
# name[6] = "ch" this is not allowed in python

# Slicing in string mean a part of string
name = "Prakash pandey"
part = name[0:8] # print 0 to 7 character of string
print(part)
#negative slicing
name = "pandey"
print(name[-7:])
