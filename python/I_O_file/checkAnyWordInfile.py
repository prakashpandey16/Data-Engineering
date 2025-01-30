def check_word_InFile( word):
    with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt","r") as f:
        data = f.read()
        if(data.find(word)!=-1):
            print("found")
        else:
            print("Not found")

check_word_InFile("Python")