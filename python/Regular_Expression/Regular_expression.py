import re  # Importing the regular expressions module

# -------------------- re.match() --------------------
# Match checks if the pattern appears **at the beginning** of the text

pattern = r"Hello"  # Pattern to match the word "Hello"
text = "Hello World"  # Input text

match = re.match(pattern, text)  # Tries to match 'Hello' at the beginning of the text
if match:
    print("Found:", match.group())  # If a match is found, print the matched text
else:
    print("Not found")  # If no match, print "Not found"

# -------------------- re.search() --------------------
# Searches for the pattern **anywhere** in the text

pattern = r"World"  # Pattern to match "World"
text = "Hello World"  # Input text

match = re.search(pattern, text)  # Searches for 'World' anywhere in the text
if match:
    print("Found:", match.group())  # If found, print the matched text
else:
    print("Not found")  # If no match, print "Not found"

# -------------------- re.findall() --------------------
# Finds **all occurrences** of a pattern in the text

pattern = r"\d+"  # Pattern to match one or more digits (\d = any digit, + = one or more)
text = "There are 10 apples and 20 Bananas."  # Input text

matches = re.findall(pattern, text)  # Returns a list of all numbers found
print("Numbers found:", matches)  # Output: ['10', '20']

# -------------------- re.finditer() --------------------
# Similar to findall, but returns an iterator of match objects

pattern = r"\d+"  # Pattern to match digits
text = "There are 10 apples and 20 Bananas."  # Input text

matches = re.finditer(pattern, text)  # Returns an iterator of match objects
print("Numbers found using finditer:", end=" ")
for match in matches:
    print(match.group(), end=" ")  # Prints each matched number, space-separated
# Output: 10 20

print()  # New line for clarity

# -------------------- re.sub() --------------------
# Substitutes (replaces) a pattern with another word

pattern = r"Apples"  # Pattern to find "Apples"
replacement = "Mangoes"  # Replace "Apples" with "Mangoes"
text = "There are 10 Apples and 20 Bananas."  # Input text

match = re.sub(pattern, replacement, text)  # Replaces 'Apples' with 'Mangoes'
print("After substitution:", match)  # Output: "There are 10 Mangoes and 20 Bananas."

# -------------------- re.split() --------------------
# Splits the text based on a pattern

pattern = r"\s+"  # Pattern to match one or more whitespace characters (\s = space, + = one or more)
text = "Hello  World"  # Input text with extra spaces

split_text = re.split(pattern, text)  # Splits text into a list wherever there's space
print("After splitting:", split_text)  # Output: ['Hello', 'World']

# -------------------- Email Pattern --------------------
# This pattern validates a standard email format

pattern = r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"  # Email regex pattern
email = "example@email.com"  # Test email

if re.match(pattern, email):
    print("Valid email:", email)  # If email matches pattern, print valid
else:
    print("Invalid email:", email)  # Otherwise, print invalid

# -------------------- Phone Number Pattern --------------------
# This pattern matches a **10-digit phone number** (Indian format)

pattern = r"\b\d{10}\b"  # Matches exactly 10-digit numbers (India's mobile number format)
text = "My number is 9876543210 and office number is 1234567890."  # Sample text with phone numbers

matches = re.findall(pattern, text)  # Finds all phone numbers in the text
print("Phone numbers found:", matches)  # Output: ['9876543210', '1234567890']
