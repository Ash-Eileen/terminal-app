![Welcome Screen](https://github.com/Ash-Eileen/terminal-app/blob/master/docs/welcome_screen.png)

# **Installation Instructions**

1. If you do not have Ruby installed on your computer please go to this [page](https://www.ruby-lang.org/en/documentation/installation/) and follow the installation instructions.

2. If you do not have bundler installed on your computer please run the following command line instruction to install this gem:

   `gem install bundler`

3. Clone the files from this repository by using the following command line instruction:

   `git clone https://github.com/Ash-Eileen/terminal-app.git`

4. From here please navigate to the src folder from where you have cloned the repository:

   `cd src`

5. There are three executable files you can choose to run from here which will install all required gems. These files include the command line arguments required to enter each game mode. 

   - For the full game with menu and options to play either single or multi-player mode please run:

     `./run_app_with_menu.sh`

   - For single-player mode only please run:

     `./run_app_single_player.sh`

   - For multi-player mode only please run:

     `./run_app_multi_player.sh`

6. Please enjoy the game!

## **Features**

- Three files with options to run the game including menu or just your preferred game mode.
- A randomly generated word in single-player mode.
- The option to enter a word for other players to guess in multi-player mode.
- Error handling to ensure that the word entered for others to guess does not contain special characters or numbers.
- Error handling to ensure that previous guesses cannot be entered twice and use up a guessing opportunity.
- Error handling to ensure that entering special characters or numbers when guessing does not use up a guessing opportunity.
- Cute ASCII cats and a pretty logo.
