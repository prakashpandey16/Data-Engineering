rows = int(input("Enter number of rows : "))
cols = int(input("Enter number of cols : "))

matrix = []

for row in range(rows):
   while True:
       row_values = list(map(int,input(f"Enter {cols} values for row {row+1} (comma separated): ").split(",")))
       if len(row_values) == cols:
           matrix.append(row_values)
           break
       else:
           print(f"Please Enter exactly {cols} values.")

# printing element of matrix
for el in matrix:
    print(el)
    