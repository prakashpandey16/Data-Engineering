class Account:
    # Parameterized constructor
    def __init__(self, balance, Account_number):
        self.balance = balance
        self.Account_number = Account_number
        
    # Method to debit from account
    def debit(self, debit_amount):
        if debit_amount <= self.balance:
            self.balance -= debit_amount
            print(f"{debit_amount} rupees have been debited from account number {self.Account_number}.")
        else:
            print(f"Insufficient balance! Cannot debit {debit_amount} rupees from account number {self.Account_number}.")
        
    # Method to credit to account
    def credit(self, credit_amount):
        self.balance += credit_amount
        print(f"{credit_amount} rupees have been credited to account number {self.Account_number}.")
         
    # Method to print the balance
    def print_Balance(self):
        print(f"Your account balance is: {self.balance} rupees.")

# Create an instance of Account
prakash = Account(25000, "SBI65192")

# Call methods
prakash.print_Balance()
prakash.credit(5000)
prakash.debit(10000)
prakash.debit(30000)  # To test insufficient balance
prakash.print_Balance()

         
        
        