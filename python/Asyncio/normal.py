import asyncio  # To use asynchronous programming features
import requests  # For making HTTP requests (not asynchronous, so adjustments are necessary)

# Define an asynchronous function to perform a task
async def function1():
    print("func 1")
    # URL of the first image
    URL = "https://wallpaperaccess.in/public/uploads/preview/1920x1200-desktop-background-ultra-hd-wallpaper-wiki-desktop-wallpaper-4k-.jpg"
    
    # Use `requests` to download the file (Note: This blocks the event loop)
    response = requests.get(URL)
    
    # Write the response content into a file
    open("image1.jpg", "wb").write(response.content)
    return "Function 1 Completed"

async def function2():
    print("func 2")
    # URL of the second image
    URL = "https://p4.wallpaperbetter.com/wallpaper/490/433/199/nature-2560x1440-tree-snow-wallpaper-preview.jpg"
    
    # Download the file
    response = requests.get(URL)
    
    # Write the content to a file
    open("image2.jpg", "wb").write(response.content)

async def function3():
    print("func 3")
    # URL of the third image
    URL = "https://c4.wallpaperflare.com/wallpaper/622/676/943/3d-hd-wikipedia-3d-wallpaper-preview.jpg"
    
    # Download the file
    response = requests.get(URL)
    
    # Write the content to a file
    open("image3.jpg", "wb").write(response.content)

# Define the main asynchronous function to orchestrate tasks
async def main():
    # Use `asyncio.gather` to run multiple asynchronous functions concurrently
    # The functions will run in parallel if they are non-blocking
    # Note: In this case, `requests.get` is blocking, so it won't truly run concurrently
    L = await asyncio.gather(
        function1(),
        function2(),
        function3(),
    )
    
    # Print the results from the functions
    print(L)

# Run the main function using asyncio
asyncio.run(main())
