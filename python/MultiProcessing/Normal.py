import multiprocessing  # Importing the multiprocessing module to enable parallel processing.
import requests  # Importing the requests module to handle HTTP requests for downloading files.

# Defining a function to download a file from a given URL and save it with a specific name.
def downloadFile(url, name):
    print(f"Started Downloading {name}")  # Print a message indicating the start of the download for the file with the given name.
    response = requests.get(url)  # Send a GET request to the specified URL to retrieve the content of the file.
    open(f"myfiles/file{name}.jpg", "wb").write(response.content)  # Open a file in write-binary mode and save the downloaded content.
    print(f"Finished Downloading {name}")  # Print a message indicating the completion of the download for the file with the given name.

# The main block of code that runs when the script is executed.
if __name__ == "__main__":
    url = "https://picsum.photos/2000/3000"  # URL of the image to be downloaded.
    pros = []  # List to hold the process objects for multiprocessing.
    
    for i in range(5):  # Loop to start 5 processes to download 5 different files.
        # Create a new process to download the file using the downloadFile function.
        p = multiprocessing.Process(target=downloadFile, args=[url, i])  # Specify the target function and arguments.
        p.start()  # Start the new process.
        pros.append(p)  # Add the process to the list of processes.

    # This part waits for all processes to finish before ending the program.
    for p in pros:  # Loop through each process in the pros list.
        p.join()  # Wait for the process to complete before moving to the next one.
