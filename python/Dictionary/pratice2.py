dict = {}
marks = int(input("Enter marks of java :"))
dict.update({"java":marks})
marks = int(input("Enter marks of c++ :"))
my_dict = {"C++":marks}
dict.update(my_dict)
marks = int(input("Enter marks of Python :"))
my_dict = {"Python":marks}
dict.update(my_dict)
print(dict)

