import functools
import time

# Function Caching in Python
# Function caching is a technique for improving the performance of a program 
# by storing the results of a function call so that you can reuse the results 
# instead of recomputing them every time the function is called.

# lru_cache decorator from functools caches the results of the function calls.
# By using this, repeated function calls with the same arguments will return 
# cached results instead of recalculating them, making it much faster.

@functools.lru_cache(maxsize=None)  # maxsize=None allows for an unlimited cache
def fx(n):
    # Simulate a time-consuming operation by sleeping for 'n' seconds
    time.sleep(n)
    return n * 10

# Calling fx with different arguments

print(fx(10))  # First time, takes 10 seconds to compute and cache
print("Print after 10 seconds")
print(fx(2))   # First time, takes 2 seconds to compute and cache
print("Print after 2 second")
print(fx(5))   # First time, takes 5 seconds to compute and cache
print("Print after 5 second")

# Subsequent calls with the same arguments will return cached results instantly
print(fx(10))  # Cached result, returns instantly
print("Print after 10 seconds")
print(fx(2))   # Cached result, returns instantly
print("Print after 2 second")
print(fx(5))   # Cached result, returns instantly
print("Print after 5 second")

# Calling fx with a new argument
print(fx(20))  # First time, takes 20 seconds to compute and cache
print("Print after 20 seconds")

# Important Notes:
# 1. **Function Caching**: Using lru_cache, we cache results of the function to avoid recomputing them, improving performance.
# 2. **Time Efficiency**: With caching, repeated function calls (like fx(10)) become significantly faster as they retrieve results from the cache.
# 3. **Lazy Evaluation**: Caching allows for lazy evaluation, where results are computed only once and then reused.
# 4. **Memory Efficiency**: Cache storage is managed automatically, allowing results to be stored without manually handling cache logic.
# 5. **Recursive and Expensive Functions**: Caching is particularly useful for recursive functions and computationally expensive operations (like fibonacci sequence, etc.).
