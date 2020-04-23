module Screens

    def self.typing(word)
        word.each_char {|character|
            print character
            sleep (0.07)
        }
    end

    def self.welcome_screen
        system "clear"
        print "\n\n\n\n\n\n                                 "
        typing("Welcome to...")
        puts "\n\n\n"
        sleep 0.5
        Images::title
        print "\n\n                                 "
        sleep 0.5
        typing("...with cats")
        puts "\n"

    end

    def self.display_menu
        menu_options = %w(Single-player Multi-player Exit)
        prompt = TTY::Prompt.new
        puts "\n\n"
        Images::title
        puts Images::menu_cat.colorize(:magenta)
        selection = prompt.select("What would you like to do?", menu_options)
    end

    def self.win
        puts Images::game_won_cat.colorize(:magenta)
        puts "You're a winner baby!"
    end

    def self.lose
        puts Images::game_lost_cat.colorize(:blue)
        puts "\n\nBetter luck next time..."
    end

end
