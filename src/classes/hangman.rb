# This class displays the hangman and increments the number of guesses.
class Hangman
  attr_accessor :guesses, :hangman

  # This method initialises the number of guesses at 0 and contains
  # the full hangman image. The hangman has been displayed in an array
  # to provide more readability to the code.
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

  # This displays the hangman array based on how many guess attempts
  # have taken place
  def draw_hangman
    puts @hangman[@guesses]
  end
end
