# This class is designed to create the word that needs to be guessed.
class WordGenerator
  attr_accessor :number_of_players, :word

  # Initialises the word that needs to be guessed as a string.
  def initialize
    @word = ''
  end

  # This method takes in the number of players. If only 1 player then
  # a random word is generated. If multi-player then the user will
  # be prompted to enter a word. A word that needs to be guesssed is
  # returned in both cases.
  def generate_word(number_of_players)
    # Checks the number of users. If only ony user a message is displayed
    # advising the word is generated and the word to be guessed is updated.
    if number_of_players == 1
      system 'clear'
      Screens.typing "Hello Gamer. Let's play hangman.\n\nA word has been randomly generated for you to guess."
      puts Images.menu_cat.colorize(:light_blue)
      @word = RandomWordGenerator.word.upcase
      sleep 2
    else
      # Displays the instruction screen for multi-player mode using the
      # multi_mode method.
      multi_mode
      # Enters loop to get the user to input a word to be guessed.
      begin
        system 'clear'
        puts "Hello Player 1!\nPlease enter a word:"
        @word = STDIN.gets.upcase.strip
        # If the word inputted above does not include numbers or special characters
        # then the word is updated and displayed back to the user.
        puts "You have selected '#{word}'."
        puts Images.menu_cat.colorize(:cyan)
        sleep 2
        # If the input contains any characters other than A-Z or a-z. Raises an
        # argument error if user input contains characters that are not allowed.
        if !@word.scan(/[^a-zA-Z]/).empty? || @word.empty?
          raise ArgumentError, 'Word has special characters or numbers'
        end
        # Displays a message advising entry is invalid and prompts the user to retry.
      rescue ArgumentError
        puts "No funny business buddy! Let's avoid special characters and numbers please.\n"
        retry
      end
    end
  end

  # Displays the instructions for multi-player mode.
  def multi_mode
    CURSOR.invisible do
      system 'clear'
      Screens.typing 'Yay! You have friends!'
      sleep 0.3
      Screens.typing "\n\nWhen you play with your friends one person will pick a word. Another person will type in the guesses.\n\n"
      puts Images.menu_cat.colorize(:cyan)
      sleep 1
      Screens.typing "\n\nOkay guesser(s) please look away."
      sleep 2
      system 'clear'
    end
  end
end
