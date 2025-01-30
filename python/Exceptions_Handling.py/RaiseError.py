n = int(input("Enter a value between 5 and 10: "))

# Check if the value is out of the allowed range
if n < 5 or n > 10:
    # Raise a ValueError if the value is not within the range
    # The `raise` statement allows us to manually trigger an exception (ValueError) when the input is invalid.
    raise ValueError("Value should be between 5 and 10")
else:
    # Print the value if it is valid
    print(n)
