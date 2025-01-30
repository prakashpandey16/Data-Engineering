# second method
with open(r"C:\Users\praka\OneDrive\Desktop\Data Engineering\python\pratice.txt", "r") as f:
 data = f.read()
print(data)
nums = data.split()
print(nums)
count = 0
for val in nums:
    if((int(val))%2==0):
        count+=1

print(count)  
