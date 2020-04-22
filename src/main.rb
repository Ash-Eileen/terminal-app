require 'random_word_generator'
require 'tty-prompt'
require 'colorize'

require_relative './classes/hangman_image.rb'
require_relative './classes/word_generator.rb'
require_relative './classes/guess_checker.rb'
require_relative './classes/ascii_images.rb'
require_relative './classes/menu.rb'
require_relative './classes/screen_transitions.rb'

Screens::welcome_screen
sleep 2

loop do
    
    system "clear"
    
    if ARGV.length == 0
        selection = Menu::display_menu 
    end

    if selection == "Single-player" || ARGV.join == "single"
        WORD = WordGenerator.new(1)
    elsif selection == "Multi-player" || ARGV.join == "multi"
        WORD = WordGenerator.new("multi")
    else
        system "clear"
        exit
    end

    WORD.generate_word
    guess = GuessChecker.new(WORD.word)
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

    if guess.won
        Screens::win
    else
        Screens::lose
    end

    puts "Play again? (y or n)"
    response = gets.strip
    until response == "y" || response == "n"
        puts "Invalid selection.\nPlay again? (y or n)"
        response = gets.strip
    end

    exit if response == "n"
    
end