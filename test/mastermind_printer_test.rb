require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'stringio' 
require_relative '../lib/mastermind_printer'

class MasterMindPrinterTest < Minitest::Test
  
  def test_it_greets_user_with_game_title
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.greeting 
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_opens_with_menu
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.menu
    assert fake_stdout.string.kind_of?(String)
  end

  def test_when_user_presses_play_specific_message_pops_up
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_picks_p
    assert fake_stdout.string.kind_of?(String)
  end       

  def test_when_user_guesses_correctly
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_guesses_correctly("ggrb", 4, "1 minute, 40 seconds")
    assert fake_stdout.string.kind_of?(String)
  end 

  def test_it_tells_user_if_guess_too_short_of_characters
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_guess_too_short
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_tells_user_if_guess_too_long_of_characters
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_guess_too_long
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_tells_user_correct_number_of_elements_and_positions
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.correct_number_of_elements_and_positions("ggrb", 3, 2, 3)
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_will_give_game_instructions
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.instructions
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_has_a_different_message_to_return_to_menu
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_return_to_main_menu
    assert fake_stdout.string.kind_of?(String)
  end

  def test_it_has_a_quitting_message
    fake_stdout = StringIO.new              
    MasterMindPrinter.file = $stdout            
    MasterMindPrinter.user_quit
    assert fake_stdout.string.kind_of?(String)
  end

end 
