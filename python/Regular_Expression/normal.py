# https://regexr.com/ for more details
import re  # Importing the 're' module for working with regular expressions

# Defining the pattern that looks for uppercase letters followed by 'yclone'
pattern = r"[A-Z]+yclone"

# The given text where we will search for the pattern
text = '''
Cyclone Dumazile was a strong tropical cyclone in the South-West Indian Ocean that affected Madagascar 
and Réunion in early March 2018. Dumazile originated from a cyclone Dyclone low-pressure area that 
formed near Agaléga on 27 February. It became a tropical disturbance on 2 March, and was named 
the next day after attaining tropical storm status. Dumazile reached its peak intensity on 5 March, 
with 10-minute sustained winds of 165 km/h (105 mph).
'''

# Using re.search() to find the first match of the pattern in the text
match = re.search(pattern, text)

# If a match is found, print the match object
if match:
    print(match)  # This will print the match object if a match is found
else:
    print("No match found")

# Using re.finditer() to find all non-overlapping matches of the pattern in the text
matches = re.finditer(pattern, text)

# Looping through all the matches found
for match in matches:
    # Printing the span (start and end positions) of the match
    print(match.span())
    
    # Printing the matched substring from the text based on the span
    print(text[match.span()[0]:match.span()[1]])
