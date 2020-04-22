class GuessChecker

    attr_accessor :hidden_word, :guessing_word, :guess, :attempts, :won, :lost

    def initialize(guessing_word)
        @guessing_word = guessing_word.split("")
        @hidden_word = Array.new
        @guess = String.new
        @attempts = Array.new
        @won = false
        @lost = false
    end

    def create_hidden_word
        @hidden_word = (["_"] * @guessing_word.length)
    end

    def get_guess
        puts "Please guess a letter or word"
        @guess = STDIN.gets.upcase.strip
        until !@attempts.include?(@guess) && !@hidden_word.include?(@guess)
            puts "You've tried that before...try again..."
            puts "Please guess a letter or word"
            @guess = STDIN.gets.upcase.strip
        end
        raise ArgumentError, "Word has special characters or numbers" if @guess.scan(/[^a-zA-Z]/).length != 0 || @guess.length == 0
    rescue
        puts "Whoops! Looks like you entered a special character or number. Try again! No attempts were used."
        retry
    end

    def display_hidden_and_attempts
        puts "You have guessed: #{@attempts}"
        puts @hidden_word.join(" ")
        
    end

    def check_guess(hangman)
        if @guess == @guessing_word.join
            puts "Wow you won! Amazing!"
            sleep 1
            @won = true
        elsif @guessing_word.include?(@guess)
            index = 0
            @guessing_word.map { |character| 
                @hidden_word[index] = @guess if @guess == character
                index += 1
            }
            puts @hidden_word.join(" ")
            if @hidden_word == @guessing_word
                puts "Wow you won! Amazing"
                sleep 1
                @won = true
            end
        else
            @attempts.push(@guess)
            hangman.guesses += 1
            if hangman.guesses == 9
                system "clear"
                puts hangman.draw_hangman
                puts "Oh no...The hangman is out of time...the word was #{@guessing_word.join}"    
                @lost = true
                sleep 2
            else
                puts "Wrong"
            end
            sleep 1
        end
    end

end