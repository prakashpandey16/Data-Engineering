with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt","r") as f:
    data = f.read()
    print(data)
# in with it is not compulsary to close file bcz it automatically close file
with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\I_O_file\demo.txt","w") as f:
    f.write("Hey i am overriting in demo file")