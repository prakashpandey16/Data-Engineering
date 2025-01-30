questions = [
    ["What does HTML stand for?", "Hyper Text Markup Language", "Home Tool Markup Language", "Hyperlinks and Text Markup Language", "None of these", 1],
    ["Which programming language is known as the backbone of web development?", "Python", "JavaScript", "C++", "Ruby", 2],
    ["What does CSS stand for?", "Cascading Style Sheets", "Creative Style Sheets", "Computer Style Sheets", "None of these", 1],
    ["Which is not a programming language?", "Java", "Python", "C++", "HTML", 4],
    ["What is used to style a web page?", "CSS", "HTML", "Java", "Python", 1],
    ["Which of the following is a Python framework?", "Django", "React", "Angular", "Vue", 1],
    ["Which symbol is used for comments in Python?", "//", "#", "/* */", "<!-- -->", 2],
    ["Which programming language is best for data analysis?", "Java", "Python", "C#", "Ruby", 2],
    ["Which SQL command is used to retrieve data?", "INSERT", "DELETE", "SELECT", "UPDATE", 3],
    ["Which is a popular version control system?", "Git", "Docker", "Kubernetes", "CI/CD", 1],
    ["Which method is used to add an element to a list in Python?", "append()", "add()", "insert()", "push()", 1],
    ["Which operator is used for exponentiation in Python?", "^", "", "exp()", "^^", 2],
    ["What does IDE stand for?", "Integrated Development Environment", "Intelligent Debugging Environment", "Interactive Design Editor", "Internal Development Engine", 1],
    ["Which file format is used for storing Python scripts?", ".py", ".python", ".pys", ".pt", 1],
    ["What is the full form of API?", "Application Programming Interface", "Applied Programming Integration", "Artificial Protocol Interaction", "Application Performance Indicator", 1],
    ["What is used to manage packages in Python?", "NPM", "PIP", "Composer", "Bundle", 2],
    ["Which of the following is not a relational database?", "MySQL", "MongoDB", "PostgreSQL", "SQLite", 2],
    ["Which command is used to initialize a Git repository?", "git init", "git start", "git begin", "git create", 1],
    ["Which data structure uses FIFO (First In, First Out)?", "Stack", "Queue", "Array", "Linked List", 2],
    ["Which of the following is a NoSQL database?", "MySQL", "PostgreSQL", "MongoDB", "SQLite", 3],
    ["What does JSON stand for?", "JavaScript Object Notation", "JavaScript Online Navigation", "Java Syntax Object Navigation", "None of these", 1],
    ["Which of the following is used to declare a variable in JavaScript?", "var", "let", "const", "All of the above", 4],
    ["Which programming paradigm does Python follow?", "Object-Oriented", "Functional", "Procedural", "All of the above", 4],
    ["What is the purpose of a constructor in a class?", "To destroy an object", "To initialize an object", "To inherit a class", "To override a method", 2],
]

levels = [1000, 2000, 3000, 5000, 10000, 20000, 40000, 80000, 160000, 320000]
money = 0

for i in range(len(questions)):
    question = questions[i]
    print(f"\n\nQuestion  for Rs. {levels[i]}")
    print(question[0])
    print(f"1. {question[1]}          2. {question[2]} ")
    print(f"3. {question[3]}          4. {question[4]} ")
    reply = int(input("Enter your answer (1-4) or 0 to quit:\n"))
    if reply == 0:
        money = levels[i - 1] if i > 0 else 0
        break
    if reply == question[-1]:
        print(f"Correct answer, you have won Rs. {levels[i]}")
        if i == 4:
            money = 10000
        elif i == 9:
            money = 320000
        elif i == 14:
            money = 10000000
    else:
        print("Wrong answer!")
        break

print(f"Your take-home money is {money}")