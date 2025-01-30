dict = {
    "prakash" : [10,20,30,40],
    "rahul" : [10,30,40,50],
    "jomdo" : [10,20,30]
}
percentage = 0
for el in dict:
    if el=="prakash":
        percentage = sum(dict[el]) / len(dict[el])
        print(percentage)
