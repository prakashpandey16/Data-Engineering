# Import necessary modules
import argparse  # For handling command-line arguments
import requests  # For making HTTP requests to download files

def download_file(url, local_filename): 
    """
    Downloads a file from the given URL and saves it locally.
    
    Parameters:
    - url: The URL of the file to download.
    - local_filename: The name to save the file as locally. If None, uses the filename from the URL.
    
    Returns:
    - The name of the saved file.
    """
    try:
        # If no output filename is specified, derive it from the URL
        if local_filename is None:
            local_filename = url.split('/')[-1]  # Extract the last part of the URL as the filename

        # Start a streaming HTTP GET request
        with requests.get(url, stream=True) as r:
            r.raise_for_status()  # Raise an exception for HTTP errors
            # Open a local file in binary write mode to save the downloaded data
            with open(local_filename, 'wb') as f:
                # Write the file in chunks to handle large files efficiently
                for chunk in r.iter_content(chunk_size=8192): 
                    f.write(chunk)  # Write each chunk to the file
        print(f"File downloaded successfully and saved as '{local_filename}'")
        return local_filename  # Return the name of the saved file
    except Exception as e:
        print(f"An error occurred: {e}")

# Create an ArgumentParser object to handle command-line arguments
parser = argparse.ArgumentParser(description="Download a file from a given URL.")

# Add positional argument for the URL of the file to download
parser.add_argument("url", help="URL of the file to download")

# Add optional argument for specifying the output filename
parser.add_argument("-o", "--output", type=str, help="Name of the file to save", default=None)

# Parse the command-line arguments and store them in the 'args' object
args = parser.parse_args()

# Print the provided URL and output filename (if any) for debugging purposes
print(f"Downloading from URL: {args.url}")
if args.output:
    print(f"Saving as: {args.output}")
else:
    print("Saving with default filename derived from URL")

# Call the download_file function with the provided arguments
download_file(args.url, args.output)
