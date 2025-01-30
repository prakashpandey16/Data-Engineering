import shutil

# shutil.copy(src, dst): 
# This function copies the file located at 'src' to a new location specified by 'dst'. 
# If the destination location already exists, the original file will be overwritten.
# Example:
# shutil.copy(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\Important_functions\Shutil_Modal.py", "Shutil_Modal2.py")

# shutil.copy2(src, dst): 
# Similar to shutil.copy, but it also preserves more metadata about the original file, such as the timestamp.
# Example:
# shutil.copy2(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\Important_functions\Shutil_Modal.py", "Shutil_Modal3.py")

# shutil.copytree(src, dst): 
# Recursively copies the directory located at 'src' to a new location specified by 'dst'. 
# If the destination location already exists, the original directory will be merged with it.
# Example:
# shutil.copytree(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\Important_functions", r"C:\Backup\Important_functions")

# shutil.move(src, dst): 
# Moves the file located at 'src' to a new location specified by 'dst'. 
# This function is equivalent to renaming a file in most cases.
# Example:
# shutil.move(r"Important_functions\Shutil_Modal.py", "Shutil_Modal.py")

# shutil.rmtree(path): 
# Recursively deletes the directory located at 'path', along with all of its contents. 
# This function is similar to using the rm -rf command in a shell.
# Example:
# shutil.rmtree("Important_Methods")
