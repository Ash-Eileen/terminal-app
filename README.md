# **Welcome to Hangman! 👋**

## **Software Development Plan**

### **Statement of Purpose and Scope**

Hangman is designed for enterainment purposes. If you're bored and need something to do you can turn to this hangman app. It can provide a fun distraction when you need a break using single-player mode or you can play with friends using multi-player mode.

#### **What Hangman will do**

There will be three executable files - one to launch single-player mode, one to launch multi-player mode and one with both options included. In single-player mode the app will ask the user for their name and then will generate a random word for them to guess. The user will be able to input single letter guesses and also full words. This will continue until the full hangman picture has generated or the word has been guessed. Multi-player mode will work in the same way, however, names will not be asked in this mode as the number of users is not limited. On game over whether won or lost there will be ASCII art generated of a cat. Which art is generated will depend on the outcome. There will then be the option to play again or exit.

#### **Target Audience**

This app is targetted towards gamers, lovers of words and anyone needing a distraction from whatever is troubling them. The user will need access to the command line so this would be more suitable to a Mac or Linux user or a developer.

#### **How The Audience will use Hangman**

Hangman will be launched from the command line using any of the executable files listed in the usage section of this README.md document. The game will have single-player mode where a random word will be generated by a gem for the user to guess or can be multi-player mode where one person will enter a word for the others to guess. There is no limit on the number of players in multi-player mode, however, only one user will be able to type the guesses at a time due to the limited functionality of the command line interface.

------

### **Features**

#### **Single-player Mode Generates a Random Word**

Hangman will provide the option for a single player mode with a randomly generated word. This will utilise a gem to generate a random word. Currently this will be using the gem random-word-generator providing there are no issues in testing. The word length will be checked and then a string will be displayed showing either underscores or hyphens, this depends on the readability of both during production. The random word will be a dictionary word and not a random string of characters to ensure this game mode is actually playable for the user.

#### **Multi-player Mode In Which One Player Can Enter a Word for Others to Guess**

The game will also include a multi-player mode. This game mode will be for 2+ players. There will be no limit on the number of users for this mode. The game will prompt the other users to look away from the screen so the first player can enter a word. This input will be checked using error handling to ensure that it is a string with no special characters. If the word meets these requirements it will then be stored and a string will be displayed using underscores or hyphens to show the word length. The other players will then be able to guess letters and the word.

#### **User Interface and User Experience**

To try and make the terminal app more visually pleasing I'll be using a few different methods. For certain displayed messages they will give the illusion of typing from left to right using methods such as sleep before printing characters to the screen. I'll be utilising gems such as tty and colorize to break up the screen with coloured text. This will also highlight certain sections. I will also be using ASCII art for maing headings and to display cat ASCII art as I'm a big cat lover. I think this will also be a bit more fun for users when they see game over messages or title screens.

------

### **User Interaction and Experience**

The user will be presented with a welcome message and an instruction to press any key to continue. The next display will be dependent on which excutable file is run. For the full version including both single and multi-player mode a menu will be displayed where the user can choose which version of the game they'd like to play. In single player mode the user will be taken directly to the guess screen where a random word will have been generated for them to guess. For multi-player mode one player will be prompted to enter a word to be guessed, this will be checked by the computer to ensure that the word provided doesn't include numbers or special characters. If the word is not a string without special characters or numbers then the player will be prompted to re-enter the word until it meets these requirements. The guessers/single-player will then see a number of underscores or hyphens to show the length of the word. There will also be an ASCII chacter showing where the hangman image will be displayed.  The guessers/single-player will be able to enter a single letter guess or a whole word. The input from the user will be checked to ensure it is a string with no special characters or numbers. Any entries that do not meet this requirement will not be counted as guesses. Each incorrect guess will result in the hangman image being one step closer to completion. This will continue until the word is either correctly guessed or the user runs out of tries and the full hangman image is displayed. From here a game over screen will be displayed. For a win a happy ASCII cat image will be displayed with a congratulatory message and for a loss a sad ASCII cat image will be displayed saying the game has been lost. The user will then have the option to quit or play again.

------

## **Author**

Ashley Smith
