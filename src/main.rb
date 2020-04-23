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

CURSOR.invisible do
  Screens.welcome_screen
  sleep 2
end

loop do
  system 'clear'

  selection = CURSOR.invisible { Screens.display_menu } if ARGV.empty?

  word = WordGenerator.new

  if mode.to_s == 'single' || selection == 'Single-player'
    CURSOR.invisible { word.generate_word(1) }
  elsif mode.to_s == 'multi' || selection == 'Multi-player'
    word.generate_word('multi')
  else
    system 'clear'
    exit
  end

  guess = GuessChecker.new(word.word)
  guess.create_hidden_word
  hangman = Hangman.new
  system 'clear'

  until guess.lost || guess.won
    puts Images.small_cat.colorize(:light_red)
    hangman.draw_hangman
    guess.display_hidden_and_attempts
    guess.user_guess
    guess.check_guess(hangman)
    system 'clear'
  end

  if guess.won
    Screens.win
  else
    Screens.lose
  end

  puts "\nPlay again? (y or n)"
  response = STDIN.gets.strip
  until response == 'y' || response == 'n'
    puts "Invalid selection.\nPlay again? (y or n)"
    response = STDIN.gets.strip
  end

  system 'clear'
  exit if response == 'n'
end
