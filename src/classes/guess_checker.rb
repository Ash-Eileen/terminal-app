# This class is designed to check the users inputted guess against the word to be guessed.
# This class also triggers winning and losing the game.
class GuessChecker
  attr_accessor :hidden_word, :guessing_word, :guess, :attempts, :won, :lost

  # This initialises the GuessChecker class and all instance variable. It takes in one argument
  # in the form of guessing_word which is the word that the user needs to guess.
  def initialize(guessing_word)
    @guessing_word = guessing_word.split('')
    @hidden_word = []
    @guess = ''
    @attempts = []
    @won = false
    @lost = false
  end

  # This method creates the masked or hidden word that the user needs to guess.
  # This returns the hidden word using underscores to replace the letters in the
  # word that needs to be guessed.
  def create_hidden_word
    @hidden_word = (['_'] * @guessing_word.length)
  end

  # This method checks the guess the user has entered a string with no special
  # characters or letters and has not been tried previously. The user is prompted to 
  # retry their entry until it is valid. The method then returns the guess.
  def user_guess
    puts 'Please guess a letter or word'
    @guess = STDIN.gets.upcase.strip
    # Repeats a loop to ensure the user has not previously tried the guess and prompts
    # the user to retry until a new entry is inputted.
    until !@attempts.include?(@guess) && !@hidden_word.include?(@guess)
      puts "\nYou've tried that before...try again..."
      puts 'Please guess a letter or word'
      @guess = STDIN.gets.upcase.strip
    end
    # Checks the input does not contain any characters other than A-Z or a-z. Raises an 
    # argument error if user input contains characters that are not allowed.
    if !@guess.scan(/[^a-zA-Z]/).empty? || @guess.empty?
      raise ArgumentError, 'Word has special characters or numbers'
    end
    # Displays a message advising entry is invalid and that guesses has not been incremented.
  rescue ArgumentError
    puts 'Whoops! Looks like you entered a special character or number. Try again! No attempts were used.'
    retry
  end

  # Displays to the screen the previous attempts to the screen and the hidden word.
  def display_hidden_and_attempts
    puts "You have guessed: #{@attempts}"
    puts @hidden_word.join(' ')
  end

  # Checks the guess entered against the word to be guessed. Takes in the argument of the hangman
  # so that it can check how many guesses have been tried. Returns the updated attempts and hidden
  # word displaying any correct letters. If the hangman image has been completed it will return 
  # won or lost to end this playthrough. If the game is lost the word that the user was trying
  # to guess.
  def check_guess(hangman)
    if @guess == @guessing_word.join
      win
    elsif @guessing_word.include?(@guess)
      index = 0
      @guessing_word.map do |character|
        @hidden_word[index] = @guess if @guess == character
        index += 1
      end
      puts @hidden_word.join(' ')
      win if @hidden_word == @guessing_word
    else
      @attempts.push(@guess)
      hangman.guesses += 1
      if hangman.guesses == 9
        system 'clear'
        puts hangman.draw_hangman
        puts "Oh no...You hung him...the word was #{@guessing_word.join}"
        @lost = true
        sleep 2
      else
        puts "Oh no! That's incorrect."
      end
      sleep 1
    end
  end

  # This method displays to the screen that the user has won and changes @won to true to
  # end the game.
  def win
    puts 'Wow you won! Amazing'
    sleep 1
    @won = true
  end
end
