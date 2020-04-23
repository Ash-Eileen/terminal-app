class Hangman

    attr_accessor :guesses, :hangman
    
    def initialize
        @guesses = 0
        @HANGMAN = [
"  
    
    
    
    
 ",
"  
    
    
    
    
  --------",
"  
        |
        |
        |
        |
  --------",
"    _____
        |
        |
        |
        |
  --------",
"    _____
     |  |
     o  |
        |
        | 
  --------",
"    _____
     |  |
     o  |
     |  |
        |
  --------",
"    _____
     |  |
     o  |
    /|  |
        |
  --------",
"    _____
     |  |
     o  |
    /|\\ |
        |
  --------",
"    _____
     |  |
     o  |
    /|\\ |
    /   |
  --------",
"    _____
     |  |
     o  |
    /|\\ |
    / \\ |
  --------"]
    end

    def draw_hangman
        puts @HANGMAN[@guesses]
    end

end