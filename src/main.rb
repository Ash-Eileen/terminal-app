require 'random_word_generator'
require 'tty-prompt'
require 'colorize'
require 'tty-cursor'

require_relative './classes/hangman_image.rb'
require_relative './classes/word_generator.rb'
require_relative './classes/guess_checker.rb'
require_relative './classes/ascii_images.rb'
require_relative './classes/menu.rb'
require_relative './classes/screen_transitions.rb'

cursor = TTY::Cursor
mode = ARGV[0]

cursor.invisible{
    Screens::welcome_screen
    sleep 2}

loop do

    system "clear"
    
    if ARGV.length == 0
        selection = cursor.invisible {Menu::display_menu}
    end
    
    word = WordGenerator.new

    if mode.to_s == "single" || selection == "Single-player"
        cursor.invisible {word.generate_word(1)}
    elsif mode.to_s == "multi" || selection == "Multi-player"
        word.generate_word("multi")
    else
        exit
    end

    guess = GuessChecker.new(word.word)
    guess.create_hidden_word
    hangman = Hangman.new
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
    response = STDIN.gets.strip
    until response == "y" || response == "n"
        puts "Invalid selection.\nPlay again? (y or n)"
        response = STDIN.gets.strip
    end

    exit if response == "n"
end