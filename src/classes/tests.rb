require 'test/unit'
require 'random_word_generator'
require 'tty-prompt'
require 'colorize'
require 'tty-cursor'

require_relative 'hangman.rb'
require_relative 'word_generator.rb'
require_relative 'guess_checker.rb'
require_relative 'ascii_images.rb'
require_relative 'screen_transitions.rb'

CURSOR = TTY::Cursor
WORD = WordGenerator.new

# Tests the multi-player mode to ensure that words are created correctly.
class MultiPlayerTest < Test::Unit::TestCase
  # This method checks that the hidden word created is the correct length.
  # Uses the word 'HELLO' for an example.
  def test_multi_player_hidden_word_hello
    word = WordGenerator.new
    word.word = 'HELLO'
    guess = GuessChecker.new(word.word)
    guess.create_hidden_word
    assert_equal %w[_ _ _ _ _], guess.hidden_word
  end

  # This method checks that the hidden word created is the correct length.
  # Uses the word 'XYLOPHONE' for an example.
  def test_multi_player_hidden_word_xylophone
    word = WordGenerator.new
    word.word = 'XYLOPHONE'
    guess = GuessChecker.new(word.word)
    guess.create_hidden_word
    assert_equal %w[_ _ _ _ _ _ _ _ _], guess.hidden_word
  end

  # This method checks if the word entered as a guess in the GuessChecker class
  # matches the word generated in the WordGenerator class correctly.
  def test_guess_equals_word
    word = WordGenerator.new
    word.word = 'HELLO'
    guess = GuessChecker.new(word.word)
    guess.guess = 'HELLO'
    assert_equal guess.guess, word.word
  end

  # This method checks if the word entered as a guess in the GuessChecker class
  # does not matches the word generated in the WordGenerator class.
  def test_guess__does_not_equal_word
    word = WordGenerator.new
    word.word = 'HELLO'
    guess = GuessChecker.new(word.word)
    guess.guess = 'nope'
    assert_not_equal guess.guess, word.word
  end
end

# Tests the single-player mode to ensure that words are generated correctly.
class SinglePlayerTest < Test::Unit::TestCase
  # This method checks that the word created in single-player mode is a string.
  def test_word_is_a_string
    WORD.generate_word(1)
    assert WORD.word.is_a? String
  end

  # This method checks that the word created in single-player mode does not contain
  # any special characters or numbers.
  def test_word_is_only_letters
    WORD.generate_word(1)
    assert WORD.word.scan(/[^a-zA-Z]/).empty?
  end
end
