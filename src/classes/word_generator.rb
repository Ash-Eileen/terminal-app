class WordGenerator

    attr_accessor :number_of_players, :word,

    def initialize
        @word = String.new
    end

    def generate_word(number_of_players)
        if number_of_players == 1
            system "clear"
            puts "Hello Gamer. Let's play hangman. A word has been randomly generated for you to guess."
            @word = RandomWordGenerator.word.upcase
            sleep 2
        else
            begin
                system "clear"
                puts "Hello Player 1!"
                puts "Please enter a word:"
                @word = STDIN.gets.upcase.strip
                puts "You have selected '#{word}'."
                raise ArgumentError, "Word has special characters or numbers" if @word.scan(/[^a-zA-Z]/).length != 0 || @word.length == 0
            rescue ArgumentError    
                puts "No funny business buddy! Let's avoid special characters and numbers please.\n"
                retry
            end
        end
    end

end

