
require 'colorize'
require 'tty-cursor'

module Screens

    def self.typing(word)
        word.each_char {|character|
            print character
            sleep(0.1)
        }
    end

    def self.welcome_screen
        system "clear"
        typing("Welcome to...")
        puts "\n\n"
        sleep 0.5
        puts "██╗  ██╗ █████╗ ███╗   ██╗ ██████╗ ███╗   ███╗ █████╗ ███╗   ██╗".colorize(:light_green)
        puts "██║  ██║██╔══██╗████╗  ██║██╔════╝ ████╗ ████║██╔══██╗████╗  ██║".colorize(:light_red)
        puts "███████║███████║██╔██╗ ██║██║  ███╗██╔████╔██║███████║██╔██╗ ██║".colorize(:cyan)
        puts "██╔══██║██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║".colorize(:light_magenta)
        puts "██║  ██║██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║".colorize(:light_blue)
        puts "╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝".colorize(:light_yellow)     
        puts "\n"
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
        puts "Better luck next time..."
    end

end

