
Action	                                            Command
Create virtual environment	                |    python -m venv myenv
Activate virtual environment (Windows)    	|  myenv\Scripts\activate.bat
Activate virtual environment (Linux/macOS)  |  source myenv/bin/activate
Install a package in the environment	    |    pip install <package_name>
List installed packages	pip list            |
Generate requirements.txt file	            |    pip freeze > requirements.txt
Deactivate virtual environment	            |   deactivate
Install dependencies from requirements.txt  |	pip install -r requirements.txt
Exit Python interactive shell               |	exit() or quit()
Exit Python interactive shell (shortcut)    |  	Ctrl + Z (Windows) or Ctrl + D (Linux/macOS)
Exit virtual environment	                |     deactivate