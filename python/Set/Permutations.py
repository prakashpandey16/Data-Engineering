from itertools import permutations  # Importing permutations from itertools module

a = "Hack"  # The string to generate permutations from
n = 2  # The number of elements in each permutation
b = sorted(a)  # Sorting the string to ensure lexicographical order (alphabetical order)
result = permutations(b, n)  # Generating all permutations of length 'n' from the sorted string

# Loop through each permutation and join the tuple into a string for printing
for part in result:
    print(''.join(part))  # ''.join(part) combines the tuple elements into a string
