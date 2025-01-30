class Order:
    def __init__(self, items, price):
        self.items = items
        self.price = price

    def show_Details(self):
        print("The item is:", self.items)
        print("The price of the item is:", self.price)

    def __gt__(self, obj2):
        # Correct implementation for `__gt__` magic method
        return self.price > obj2.price


# Creating Order objects
o1 = Order("Pizza", 400)
o1.show_Details()

o2 = Order("Laptop", 100000)
o2.show_Details()

# Comparing orders
if o1 > o2:
    print("Order 1 is greater than Order 2")
else:
    print("Order 2 is greater than Order 1")
