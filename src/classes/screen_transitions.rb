
require 'colorize'
require 'tty-cursor'

module Screens

    def self.fast_types(word)
        word.each_char {|character|
            print character
            sleep(0.1)
        }
    end

    def self.welcome_screen
        system "clear"
        fast_types("Welcome to...")
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
        fast_types("...with cats?")
        puts "\n"

    end

end

