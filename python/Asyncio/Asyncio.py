import asyncio

# Define an asynchronous function that sleeps for 3 seconds and returns a value
async def function1():
    await asyncio.sleep(3)  # Asynchronous sleep for 3 seconds
    print("func1")  # Print when the function finishes
    return "Hey"  # Return a value after completion

# Define another asynchronous function that sleeps for 4 seconds and returns a value
async def function2():
    await asyncio.sleep(4)  # Asynchronous sleep for 4 seconds
    print("func2")  # Print when the function finishes
    return "Hello"  # Return a value after completion

# Define another asynchronous function that sleeps for 3 seconds and returns a value
async def function3():
    await asyncio.sleep(3)  # Asynchronous sleep for 3 seconds
    print("func3")  # Print when the function finishes
    return "Prakash"  # Return a value after completion

# Define the main asynchronous function that runs all other functions concurrently
async def main():
    # Use asyncio.gather to run multiple coroutines concurrently and wait for their results
    L = await asyncio.gather(
        function1(),  # Call function1
        function2(),  # Call function2
        function3(),  # Call function3
    )
    print(L)  # Print the list of returned values after all functions finish

# Run the main function
if __name__ == "__main__":
    asyncio.run(main())  # Start the event loop to execute the main function
