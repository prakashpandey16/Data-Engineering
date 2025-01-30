# The Python Requests module
# The Requests module is an HTTP library that enables developers to send HTTP requests in Python.
# This module makes it possible to interact with APIs and web services easily.

# Installation:
# You can install the Requests module using pip:
# pip install requests

# Example 1: Sending a GET request
# After installing the Requests module, you can use it to send HTTP requests.
# Below is an example that sends a GET request to the Google homepage:

import requests

# Sending a GET request to the Google homepage
response = requests.get("https://www.google.com")

# Printing the response text (HTML content of the page)
print("GET Request Response:")
print(response.text)

# Example 2: Sending a POST request
# You can also use the Requests module to send POST requests with custom headers and data.
# Below is an example where we send a POST request to a web service:

# Define the URL of the web service
url = "https://api.example.com/login"

# Define the custom headers
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36",
    "Content-Type": "application/json"
}

# Define the JSON payload (data to send in the POST request)
data = {
    "username": "myusername",
    "password": "mypassword"
}

# Sending the POST request with the headers and data
response = requests.post(url, headers=headers, json=data)

# Printing the response from the server
print("\nPOST Request Response:")
print(response.text)

# BeautifulSoup (bs4) Module
# BeautifulSoup is another popular module used for web scraping in Python.
# It is part of the bs4 package and helps parse and navigate HTML or XML documents.

# Installation:
# You can install the BeautifulSoup module using pip:
# pip install beautifulsoup4

# Example of web scraping using BeautifulSoup
# Below is a simple example of how BeautifulSoup can be used to scrape and parse HTML content:

from bs4 import BeautifulSoup

# Define a sample HTML string
html_content = """
<html>
<head><title>Sample Page</title></head>
<body>
<h1>Welcome to Web Scraping</h1>
<p>This is an example paragraph.</p>
</body>
</html>
"""

# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(html_content, "html.parser")

# Extracting the title of the page
title = soup.title.string
print("\nExtracted Title:")
print(title)

# Extracting the text inside the <h1> tag
heading = soup.h1.string
print("\nExtracted Heading:")
print(heading)

# Extracting the text inside the <p> tag
paragraph = soup.p.string
print("\nExtracted Paragraph:")
print(paragraph)

# Summary:
# 1. The Requests module is great for interacting with APIs and web services.
# 2. The BeautifulSoup (bs4) module is ideal for parsing and scraping web pages.
# 3. Together, they can be used to automate web tasks effectively.

# Note:
# Use web scraping responsibly and always check the website's terms of service before scraping.
