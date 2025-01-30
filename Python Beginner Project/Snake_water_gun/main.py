import random

class Snake_water_game:
    
    def user_input(self, input):
        self.input = input
        
    def Computer_input(self):
        values = ['W', 'S', 'G']
        self.computer_input = random.choice(values)
        return self.computer_input
        
    def check_winner(self):
        result = ""
        if self.input == self.computer_input:
            result = "Draw!!"
        elif self.input == 'S' and self.computer_input == 'W':
            result = "User!!"
        elif self.input == 'G' and self.computer_input == 'S':
            result = "User!!"
        elif self.input == 'W' and self.computer_input == 'G':
            result = "User!!"
        elif self.input == 'W' and self.computer_input == 'S':
            result = "Computer!!"
        elif self.input == 'S' and self.computer_input == 'G':
            result = "Computer!!"
        elif self.input == 'G' and self.computer_input == 'W':
            result = "Computer!!"
        return result

def main():
    print("Hey welcome to Snake Water Gun!!")
    print("Please Enter what you want to choose! 'W' for Water, 'S' for Snake, and 'G' for Gun")
    try:
        Input = input("Please Enter your choice: ").strip()
        input_list = ['W', 'S', 'G']
        if Input not in input_list:
            raise ValueError
        else:
            user1 = Snake_water_game()
            user1.user_input(Input)
            # Generate computer's choice before checking the winner
            print(f"Computer's choice is: {user1.Computer_input()}")
            print(f"The Snake, Water, and Gun Game Winner is: {user1.check_winner()}")
    except ValueError:
        print("Please Enter a valid input as mentioned above!!")

if __name__ == "__main__":
    main()
     
    
    
    