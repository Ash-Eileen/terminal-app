class WordGenerator
  attr_accessor :number_of_players, :word
  def initialize
    @word = ''
  end
  CURSOR = TTY::Cursor

  def generate_word(number_of_players)
    if number_of_players == 1
      system 'clear'
      Screens.typing "Hello Gamer. Let's play hangman.\n\nA word has been randomly generated for you to guess."
      puts Images.menu_cat.colorize(:light_blue)
      @word = RandomWordGenerator.word.upcase
      sleep 2
    else
      multi_mode
      begin
        system 'clear'
        puts "Hello Player 1!\nPlease enter a word:"
        @word = STDIN.gets.upcase.strip
        puts "You have selected '#{word}'."
        puts Images.menu_cat.colorize(:cyan)
        sleep 2
        if !@word.scan(/[^a-zA-Z]/).empty? || @word.empty?
          raise ArgumentError, 'Word has special characters or numbers'
        end
      rescue ArgumentError
        puts "No funny business buddy! Let's avoid special characters and numbers please.\n"
        retry
      end
    end
  end

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
