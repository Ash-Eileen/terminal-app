class Hangman

    attr_accessor :guesses, :hangman, :lost

    def initialize
        @guesses = 0
        @lost = false
    end

    def draw_hangman
        case @guesses
        when 0
            puts "       "
            puts "       "
            puts "       "
            puts "      "
            puts "      "
            puts "        "
        when 1 
            puts "       "
            puts "       "
            puts "       "
            puts "      "
            puts "      "
            puts "--------" 
        when 2 
            puts "       "
            puts "      |"
            puts "      |"
            puts "      |"
            puts "      |"
            puts "--------" 
        when 3 
            puts "  _____"
            puts "      |"
            puts "      |"
            puts "      |"
            puts "      |"
            puts "--------"
        when 4 
            puts "  _____"
            puts "  |   |"
            puts "      |"
            puts "      |"
            puts "      |"
            puts "--------" 
        when 5 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts "      |"
            puts "      |"
            puts "--------"
        when 6 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts "  |   |"
            puts "      |"
            puts "--------"
        when 7 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts " /|   |"
            puts "      |"
            puts "--------"
        when 8 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts " /|\\  |"
            puts "      |"
            puts "--------"
        when 9 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts " /|\\  |"
            puts " /    |"
            puts "--------"
        when 10 
            puts "  _____"
            puts "  |   |"
            puts "  o   |"
            puts " /|\\  |"
            puts " / \\  |"
            puts "--------"
            @lost = true
            puts "You lose!!"
        end
    end
end