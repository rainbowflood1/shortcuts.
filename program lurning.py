print ("hi")

print ("how to program")

print ("how to print")

print ("type print (''type text here'')")

print ("how to make a list like")

import random

coin_sides = ["yes", "no"]
flip = random.choice(coin_sides)

print(flip)

print ("it says yes or no randomly")

print ("how to make random letters like this")

import secrets
import string
password = ''.join(secrets.choice(string.ascii_letters + string.digits) for i in range(9))
print(password)

print ("it says a random letters and numbers")

print ("how to chat")

print ("chat in the >>>")

import random

while True:
    guess = input("text here ")
    choices = ["hi", "hi", "hi"]
    pick = random.choice(choices)
    print("The computer chooses " + pick)
    if guess == pick:
        print("You tie! Please try again")
    elif (guess == "rock" and pick == "scissors") or (guess == "paper" and pick == "rock") or (guess == "scissors" and pick == "paper"):
        print("You win! Let's play again")
    else:
        print("You lose... Please try again")
        
        