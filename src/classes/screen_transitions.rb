module Screens

    def self.typing(word)
        word.each_char {|character|
            print character
            sleep(0.1)
        }
    end

    def self.welcome_screen
        system "clear"
        print "\n\n                         "
        typing("Welcome to...")
        puts "\n\n\n"
        sleep 0.5
        Images::title
        print "\n\n                         "
        sleep 0.5
        typing("...with cats?")
        puts "\n"

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

