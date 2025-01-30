import concurrent.futures

# Function that simulates downloading a file (replace with actual download logic)
def downloadFile(url, idx):
    # Simulate file download by returning a message
    return f"Downloaded file {idx} from {url}"

# Using ProcessPoolExecutor for parallel processing
with concurrent.futures.ProcessPoolExecutor() as executor:
    # List of 10 URLs (replace with actual URLs in a real scenario)
    # This list repeats the same URL 10 times (can be replaced with different URLs)
    l1 = ['http://example.com/file1'] * 10
    
    # List of indices (numbers from 0 to 9) to simulate different file indices
    l2 = list(range(10))
    
    # Using executor.map to apply the downloadFile function to each pair of elements from l1 and l2
    # It will process the tasks in parallel across multiple processes
    results = executor.map(downloadFile, l1, l2)

    # Iterate through the results and print each message (each download result)
    for r in results:
        print(r)
