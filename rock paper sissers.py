import random

while True:
    guess = input("rock paper scissors shoot... ")
    choices = ["rock", "paper", "scissors"]
    pick = random.choice(choices)
    print("The computer chooses " + pick)
    if guess == pick:
        print("You tie! Please try again")
    elif (guess == "rock" and pick == "scissors") or (guess == "paper" and pick == "rock") or (guess == "scissors" and pick == "paper"):
        print("You win! Let's play again")
    else:
        print("You lose... Please try again")        