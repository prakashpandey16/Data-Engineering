def check_word_InLine(word):
    data = True
    line_no = 1
    with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt","r") as f:
        while data:
            data = f.readline()
            if(word in data):
                print("word found at line :",line_no)
                return
            line_no+=1
    return -1
            
print(check_word_InLine("Hello"))