# set_a = {1, 2, 3, 4}
# set_b = {3, 4, 5, 6}

# # Print original sets
# print(set_a)  # Output: {1, 2, 3, 4}
# print(set_b)  # Output: {3, 4, 5, 6}

# # add an element to set_a
# set_a.add(7)
# print(set_a)  # Output: {1, 2, 3, 4, 7}

# # remove an element from set_a
# set_a.remove(7)
# print(set_a)  # Output: {1, 2, 3, 4}

# # update set_a by adding all elements from set_b
# set_a.update(set_b)
# print(set_a)  # Output: {1, 2, 3, 4, 5, 6}

# # remove and return an arbitrary element from set_a
# set_a.pop()
# print(set_a)  # Output will vary since pop removes an arbitrary element

# # clear all elements from set_b
# set_b.clear()
# print(set_b)  # Output: set()

# # delete set_b entirely
# # del set_b

# # trying to print set_b will raise an error since it is deleted
# # print(set_b)  # This will raise a NameError since set_b no longer exists

a = {1,2,3,4}
b = {3,4,5,6}
print(a)
print(b)

# Define sets a and b
a = {1, 2, 3, 4}
b = {3, 4, 5, 6}

# Union of two sets (all unique elements from both sets)
union_a_b = a.union(b)
print(union_a_b)  # Output: {1, 2, 3, 4, 5, 6}

# Updating set a with the union of itself and b
a.update(b)  # This performs the union update
print(a)  # Output: {1, 2, 3, 4, 5, 6}

# Intersection of sets a and b (common elements)
intersection_a_b = a.intersection(b)
print(intersection_a_b)  # Output: {3, 4, 5, 6}

# Symmetric difference of sets a and b (elements in either set but not both)
symmetric_diff_a_b = a.symmetric_difference(b)
print(symmetric_diff_a_b)  # Output: set() because a and b now have the same elements

# Symmetric difference of sets b and a (order doesn't matter for symmetric difference)
symmetric_diff_b_a = b.symmetric_difference(a)
print(symmetric_diff_b_a)  # Output: set() for the same reason as above

# Difference of set a and set b (elements in a but not in b)
difference_a_b = a.difference(b)
print(difference_a_b)  # Output: set() because all elements in a are also in b

# Difference of set b and set a (elements in b but not in a)
difference_b_a = b.difference(a)
print(difference_b_a)  # Output: set() because all elements in b are also in a







