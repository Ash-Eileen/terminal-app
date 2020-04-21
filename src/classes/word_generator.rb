class WordGenerator

    attr_accessor :number_of_players, :random_word

    def initialize(number_of_players)
        @number_of_players = number_of_players
        @random_word = String.new
    end

    def generate_word
        if @number_of_players == 1
            @random_word = RandomWordGenerator.word
        else
            begin
                puts "Hello Player 1!"
                puts "Please enter a word:"
                @random_word = gets.upcase.strip
                puts "You have selected '#{random_word}'."
                raise ArgumentError, "Word has special characters or numbers" if @random_word.scan(/[^a-zA-Z]/).length != 0 || @random_word.length == 0
            rescue ArgumentError    
                puts "No funny business buddy! Let's avoid special characters and numbers please.\n"
                retry
            end
        end
    end

end

