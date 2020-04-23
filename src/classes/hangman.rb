class Hangman
  attr_accessor :guesses, :hangman

  def initialize
    @guesses = 0
    @hangman = [
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
  --------"
    ]
  end

  def draw_hangman
    puts @hangman[@guesses]
  end
end