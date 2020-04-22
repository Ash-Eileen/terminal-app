class Hangman

    attr_accessor :guesses, :hangman, :lost
    
    def initialize
        @guesses = 0
        @lost = false
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
"  _____
      |
      |
      |
      |
--------",
"  _____
   |  |
   o  |
      |
      |
--------",
"  _____
   |  |
   o  |
   |  |
      |
--------",
"  _____
   |  |
   o  |
  /|  |
      |
--------",
"  _____
   |  |
   o  |
  /|\\ |
      |
--------",
"  _____
   |  |
   o  |
  /|\\ |
  /   |
--------",
"  _____
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