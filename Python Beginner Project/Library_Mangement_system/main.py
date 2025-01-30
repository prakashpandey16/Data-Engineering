class Library:
    def __init__(self):
        self.no_of_books = 0
        self.books = []

    def add_book(self, book_name):
        """Adds a book to the library"""
        self.books.append(book_name)
        self.no_of_books += 1

    def display_books(self):
        """Displays all books in the library"""
        if self.no_of_books == 0:
            print("No books available in the library.")
        else:
            print("Books available in the library:")
            for book in self.books:
                print(book)

    def get_number_of_books(self):
        """Returns the number of books in the library"""
        print(f"The number of books in the library is {self.no_of_books}")

    def remove_book(self, book_name):
        """Removes a book from the library"""
        if book_name in self.books:
            self.books.remove(book_name)
            self.no_of_books -= 1
            print(f"'{book_name}' has been removed from the library.")
        else:
            print(f"'{book_name}' is not in the library.")

    def search_book(self, book_name):
        """Searches for a book by name"""
        if book_name in self.books:
            print(f"'{book_name}' is available in the library.")
        else:
            print(f"'{book_name}' is not available in the library.")

    def clear_all_books(self):
        """Clears all books from the library"""
        self.books.clear()
        self.no_of_books = 0
        print("All books have been removed from the library.")

    def list_books_alphabetically(self):
        """Displays all books in alphabetical order"""
        if self.no_of_books == 0:
            print("No books available in the library.")
        else:
            sorted_books = sorted(self.books)
            print("Books available in alphabetical order:")
            for book in sorted_books:
                print(book)


# Example usage
library = Library()

# Add books
library.add_book("Harry Potter")
library.add_book("Batman")
library.add_book("Python Programming")
library.add_book("Data Structures")

# Display books
library.display_books()

# Get number of books
library.get_number_of_books()

# Remove a book
library.remove_book("Batman")

# Search for a book
library.search_book("Python Programming")
library.search_book("C Programming")

# Display books again after removal
library.display_books()

# List books alphabetically
library.list_books_alphabetically()

# Clear all books
library.clear_all_books()

# Display books after clearing
library.display_books()
