def count_substring(string, substring):
    # Initialize a counter to keep track of the occurrences of the substring
    count = 0

    # Loop through the main string to check for substring matches
    # We loop up to len(string) - len(substring) + 1 to ensure there is enough room for the substring to match
    for i in range(len(string) - len(substring) + 1):
        # Check if the substring matches the current slice of the main string
        if string[i:i + len(substring)] == substring:
            # Increment the count if a match is found
            count += 1

    # Return the total number of matches
    return count


# Input string and substring
string = "prakashash"  # Main string
sub_string = "ash"     # Substring to find

# Call the function and store the result
result = count_substring(string, sub_string)

# Print the result (total occurrences of the substring)
print(result)
