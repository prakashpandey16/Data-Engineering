# syntax of join in python
# separator.join(iterable)

# 1. Joining a List of Strings
word = ["Hello","World"]
result = ' '.join(word)
print(result)

# 2. Joining a Tuple

letters = ('P', 'y', 't', 'h', 'o', 'n')
result = ''.join(letters)  # Joining without a separator
print(result)

# 3. Joining a String

s = "HELLO"
result = '-'.join(s)  # Joining each character with a hyphen
print(result)

# Output: H-E-L-L-O
# 4. Joining Numbers (After Conversion)
# If the elements are not strings (e.g., numbers), they need to be converted to strings first:

numbers = [1, 2, 3, 4]
result = ', '.join(map(str, numbers))  # Convert numbers to strings before joining
print(result)
# Output: 1, 2, 3, 4
