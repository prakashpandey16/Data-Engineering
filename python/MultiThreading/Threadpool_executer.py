from concurrent.futures import ThreadPoolExecutor
import time

def func(x):
    time.sleep(1)  # Simulates a time-consuming task
    return f"Processed value: {x}"

def poolingDemo():
    # Using ThreadPoolExecutor allows us to run multiple tasks concurrently by managing a pool of threads.
    # This improves performance when there are tasks that can be executed in parallel, such as I/O operations or CPU-bound tasks.
    with ThreadPoolExecutor() as executor:
        l = [3, 5, 1, 2]  # List of inputs to be processed concurrently
        results = executor.map(func, l)  # Maps the function to each element of the list for parallel execution
        for result in results:
            print(result)  # Prints each processed result

poolingDemo()
