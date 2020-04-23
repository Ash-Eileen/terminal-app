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

WORD = WordGenerator.new
CURSOR = TTY::Cursor

class MultiWordGeneratorTest < Test::Unit::TestCase
  def test_multi_player_hello
    WORD.generate_word('multi')
    assert_equal "HELLO", WORD.word
  end

  def test_hidden_word_works_multi_hello
    WORD.generate_word('multi')
    guess = GuessChecker.new(WORD.word)
    guess.create_hidden_word
    assert_equal ["_","_","_","_","_"], guess.hidden_word
  end

  def test_multi_player_xylophone
    WORD.generate_word('multi')
    assert_equal "XYLOPHONE", WORD.word
  end

  def test_hidden_word_works_multi_hello
    WORD.generate_word('multi')
    guess = GuessChecker.new(WORD.word)
    guess.create_hidden_word
    assert_equal ["_","_","_","_","_","_","_","_","_"], guess.hidden_word
  end
end