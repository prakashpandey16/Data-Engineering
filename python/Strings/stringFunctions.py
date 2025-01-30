# Define a string
str = "i am learning python from apna college"

# Check if the string ends with the substring "ege"
print(str.endswith("ege"))  
# The `endswith()` function checks whether the string ends with the specified substring. 
# It returns True if it does, otherwise False. Output: True

# Capitalize the first character of the string
print(str.capitalize())  
# The `capitalize()` function returns a new string where the first character is capitalized 
# (if it's a letter), and the rest of the string is converted to lowercase. 
# It doesn't modify the original string. Output: "I am learning python from apna college"

# Print the original string to show that `capitalize()` didn't modify it
print(str)  
# Output: "i am learning python from apna college"

# Replace "python" with "c++" in the string
print(str.replace("python", "c++"))  
# The `replace()` function returns a new string where all occurrences of a specified 
# substring ("python" in this case) are replaced with another substring ("c++"). 
# The original string remains unchanged. Output: "i am learning c++ from apna college"

# Find the position of the substring "from" in the string
print(str.find("from"))  
# The `find()` function returns the index of the first occurrence of the specified 
# substring ("from") in the string. If the substring is not found, it returns -1. 
# Output: 18 (the index where "from" starts)

# Count the number of occurrences of the character 'a' in the string
print(str.count("a"))  
# The `count()` function returns the number of occurrences of a specified substring 
# (or character) in the string. Output: 4
# Convert all characters in the string to uppercase
s = "prakash"
print(s.upper())  # Output: "PRAKASH"

# Convert all characters in the string to lowercase
s = "Rahul"
print(s.lower())  # Output: "rahul"

# Define a string with spaces between words
string = "Hey this is me prakash pandey"

# Split the string into a list of words using space (" ") as a delimiter
split = string.split(" ")  # Result: ['Hey', 'this', 'is', 'me', 'prakash', 'pandey']

# Join the list of words back into a single string, using an underscore ("_") as the separator
join = '_'.join(split)  # Result: "Hey_this_is_me_prakash_pandey"

# Print the resulting string
print(join)  # Output: "Hey_this_is_me_prakash_pandey"


s = "pA2"

# Check if any character in the string is alphanumeric
print(any(c.isalnum() for c in s))

# Check if any character in the string is alphabetic
print(any(c.isalpha() for c in s))

# Check if any character in the string is a digit
print(any(c.isdigit() for c in s))

# Check if any character in the string is a lowercase letter
print(any(c.islower() for c in s))

# Check if any character in the string is an uppercase letter
print(any(c.isupper() for c in s))

# String to demonstrate alignment methods
text = 'HackerRank'

# Width for alignment
width = 20

# .ljust(width, fillchar)
# Returns a left-aligned string of length 'width', padded with 'fillchar' (default is a space)
left_aligned = text.ljust(width, '-')
print(f".ljust(width, '-') => '{left_aligned}'")

# .center(width, fillchar)
# Returns a centered string of length 'width', padded with 'fillchar' (default is a space)
center_aligned = text.center(width, '-')
print(f".center(width, '-') => '{center_aligned}'")

# .rjust(width, fillchar)
# Returns a right-aligned string of length 'width', padded with 'fillchar' (default is a space)
right_aligned = text.rjust(width, '-')
print(f".rjust(width, '-') => '{right_aligned}'")

# .ljust(width, '-') => 'HackerRank--------'
# .center(width, '-') => '----HackerRank----'
# .rjust(width, '-') => '--------HackerRank'

str = "!!!Prakash!!!!!"
print(str.rstrip("!")) # "!!!prakash" removes special symbols from back for strings
 




