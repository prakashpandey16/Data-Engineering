# matrix = [
#     [1,2,3],
#     [4,5,6],
#     [7,8,9]
# ]
# print(matrix[2][1])# 8
# # printing all element of matrix
# for el in matrix:
#     print(el)
n = int(input())
m = int(input())
matrix = []
for row in range(n):
    while True:
        row_values = list(map(int,input().split(",")))
        if len(row_values)==m:
            matrix.append(row_values)
            break
        else:
            print(f"Please Enter {m} values!!")

for el in matrix:
    print(el)
            