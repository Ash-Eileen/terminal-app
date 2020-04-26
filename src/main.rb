# Main game function - calls all classes and all required gems to run the game

require 'random_word_generator'
require 'tty-prompt'
require 'colorize'
require 'tty-cursor'

require_relative './classes/hangman.rb'
require_relative './classes/word_generator.rb'
require_relative './classes/guess_checker.rb'
require_relative './classes/ascii_images.rb'
require_relative './classes/screen_transitions.rb'

CURSOR = TTY::Cursor
mode = ARGV[0]

# Displays the welcome screen and hides the cursor.
CURSOR.invisible do
  Screens.welcome_screen
  sleep 2
end

# Runs the game until the user chooses to exit.
loop do
  system 'clear'

  # Displays the menu and hides the cursor if no command line arguments
  # are entered.
  selection = CURSOR.invisible { Screens.display_menu } if ARGV.empty?

  # Initialises the WordGenerator class so that a word can be either
  # randomly created in single-player mode or can be entered by
  # a user in multi-player mode.
  word = WordGenerator.new

  # Launches the game mode depending on the selection made in the menu
  # or if command line arguments are entered when the game is launched.
  # Also functions to exit the game from the menu.
  if mode.to_s == 'single' || selection == 'Single-player'
    CURSOR.invisible { word.generate_word(1) }
  elsif mode.to_s == 'multi' || selection == 'Multi-player'
    word.generate_word('multi')
  else
    system 'clear'
    exit
  end

  # Initialises all other classes needed to run the game.
  guess = GuessChecker.new(word.word)
  guess.create_hidden_word
  hangman = Hangman.new

  system 'clear'

  # Loops through the hangman game and displays and ASCII cat.
  # This continues until the game is won or lost.
  until guess.lost || guess.won
    puts Images.small_cat.colorize(:light_red)
    hangman.draw_hangman
    guess.display_hidden_and_attempts
    guess.user_guess
    guess.check_guess(hangman)
    system 'clear'
  end

  # Displays the correct game over screen.
  if guess.won
    Screens.win
  else
    Screens.lose
  end

  # Provides the user to exit or continue. This user is prompted
  # to retry their entry until it is 'y' or 'n'.
  puts "\nPlay again? (y or n)"
  response = STDIN.gets.strip
  until response == 'y' || response == 'n'
    puts "Invalid selection.\nPlay again? (y or n)"
    response = STDIN.gets.strip
  end
  system 'clear'
  exit if response == 'n'
end
