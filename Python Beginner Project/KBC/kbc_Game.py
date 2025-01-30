# Create a program capable of displaying questions to the user like KBC.
# Use List data type to store the questions and their correct answers. 
# Display the final amount the person is taking home after playing the game.

from Data_KBC import Data as questions  # Import questions from Data_KBC

class KBC:
    @staticmethod
    def kbc_level_prize(n):
        # Returns the prize money for the nth question.
        prize_list = [1000, 2000, 4000, 8000, 16000, 32000, 64000, 125000, 250000, 500000, 1000000]
        return prize_list[n]
    
    @staticmethod
    def calculate_winning_amount(correct_answers):
        # Calculates the winning amount based on the number of correct answers.
        if correct_answers == 0:
            return 0
        # static method ko ham class ke naam se call kar sakte hai
        return KBC.kbc_level_prize(correct_answers - 1)
    
    @staticmethod
    def check_answer(user_answer, correct_answer):
        # Checks if the user's answer is correct.
        return user_answer == correct_answer
    
    @staticmethod
    def print_questions():
        answer_list = []  
        correct_answers = 0  
        
        print("Ji Deviyo aur Sajno, swagat hai aapka KBC game mein! Yeh rahe aaj ke sawal:")
        
        # enumerate hame i or question dono dega isliye hamne yaaha enumerate use kiya hai
        for i, question in enumerate(questions):  # Use `questions` here instead of `Data_KBC`
            try:
                print(f"\n\nQuestion {i+1} for Rs. {KBC.kbc_level_prize(i)}")
                print(question[0])  # The question text
                print(f"1. {question[1]}                     2. {question[2]}")
                print(f"3. {question[3]}                     4. {question[4]}")
                
                # Input answer (treat as int)
                try:
                    user_answer = int(input("\nEnter your answer (1 to 4) or 0 to quit: ").strip())
                except ValueError:
                    print("Kripya ek valid integer answer dein (1 se 4 ke beech ya 0 to quit).")
                    continue
                
                if user_answer == 0:
                    print(f"\nAapka khel yahi samaapt hota hai. Aapne kul mila kar jeeta hai Rs. {KBC.calculate_winning_amount(correct_answers)}. Dhanyavaad!")
                    break
                
                # Check if input is valid (within 1 to 4)
                if user_answer not in {1, 2, 3, 4}:
                    print("Kripya 1 se 4 ke beech ka koi valid option chunein ya 0 daba kar quit karein.")
                    continue
                
                # Append user answer
                answer_list.append(user_answer)
                
                # Check answer
                correct_option = int(question[5])  # Ensure the correct answer is treated as an integer
                if KBC.check_answer(user_answer, correct_option):
                    correct_answers += 1
                    print(f"Sahi jawab! Aap jeet chuke hain Rs. {KBC.kbc_level_prize(correct_answers - 1)}")
                else:
                    print("Galat jawab! Aapka khel yahin samaapt hota hai.")
                    break
            
            except IndexError:
                print("Data_KBC ka format galat hai ya question incomplete hai.")
                break
        
        # Calculate and display winnings
        winning_amount = KBC.calculate_winning_amount(correct_answers)
        print(f"\nAapne kul mila kar jeeta hai Rs. {winning_amount}. Mubarak ho!")
        return answer_list

def main():
    KBC.print_questions()

if __name__ == "__main__":
    main()
