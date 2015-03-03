gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'stringio' 
require "../lib/mastermind_user_input"
require "../lib/mastermind_game"

  class MasterMindUserInputTest < MiniTest::Test

    def test_it_runs
      assert MasterMindUserInputTest.new("")
    end

    def setup
      @game = MasterMindGame.new
      @input = MasterMindUserInputTest.new("")
    end

    def test_sequence_is_four_letters
      four_letter_sequence = @game.colors_to_guess
      assert four_letter_sequence.length, 4 
    end

    def test_it_generates_random_sequences
      result1 = @game.secret_colors_generator
      result2 = @game.secret_colors_generator
      puts result1, result2
      refute result1 == result2
    end

    def test_guess_count_is_added_when_game_begins
      guess = @game.user_guesses
      assert @game.user_guesses.size, 1
    end

    def test_it_checks_if_guess_is_too_short
      user_guess = "rbg"
      fake_stdout = StringIO.new              
      MasterMindPrinter.file = $stdout            
      MasterMindPrinter.user_guess_too_short
      assert fake_stdout.string.kind_of?(String), user_guess
    end

    def test_it_checks_if_guess_is_too_long
      user_guess = "rbgggg"
      fake_stdout = StringIO.new              
      MasterMindPrinter.file = $stdout            
      MasterMindPrinter.user_guess_too_long
      assert fake_stdout.string.kind_of?(String), user_guess
    end
  end