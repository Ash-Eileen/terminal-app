require 'random_word_generator'
require 'tty-prompt'
require 'colorize'

require_relative './classes/hangman_image.rb'
require_relative './classes/word_generator.rb'
require_relative './classes/guess_checker.rb'
require_relative './classes/ascii_images.rb'
require_relative './classes/menu.rb'
require_relative './classes/screen_transitions.rb'



loop do
    Screens::welcome_screen
    sleep 2
    system "clear"
    Menu::display_menu    
    word = WordGenerator.new("Multi!!")
    word.generate_word
    guess = GuessChecker.new(word.random_word)
    guess.create_hidden_word
    hangman = Hangman.new
    
    sleep 1
    system "clear"
    until guess.lost || guess.won
        hangman.draw_hangman
        guess.display_hidden_and_attempts
        guess.get_guess
        guess.check_guess(hangman)
        system "clear"
    end
end