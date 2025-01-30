# The strip() method in Python is used to remove leading and trailing 
# whitespace characters (such as spaces, tabs, and newline characters) from a string.
# In the context of your function, strip() ensures that answers are compared accurately,
# even if the user accidentally includes extra spaces before or after their input.

# "Paris" == " Paris"  # False

# "Paris".strip() == " Paris".strip()  # True

def compares(string):
    if(string.lower().strip()=="yes"):
        print("True")
    else:
        print("False")
        
s = " yes "
compares(s)
