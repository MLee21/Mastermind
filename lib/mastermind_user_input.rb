require_relative 'mastermind_game'
require_relative 'mastermind_printer'
require 'pry'

#Business Logic
class MasterMindUserInput
  include MasterMindPrinter

  attr_accessor :user_guess

  def initialize
    @game = MasterMindGame.new 
    @time = GuessingTimer.new
    @user_guess = user_guess
    @correct = false
  end

  def user_input_upon_start_menu
    MasterMindPrinter.greeting 
    loop do
      MasterMindPrinter.menu
      print "> "
      response = gets.chomp.downcase 
      case response
      when 'p','play'
        press_play_user_starts_guessing
      when 'i','instructions'
        MasterMindPrinter.instructions
      when 'q','quit'
        MasterMindPrinter.user_quit
        break
      end
    end
  end

  def press_play_user_starts_guessing
    MasterMindPrinter.user_picks_p
    loop do
      print "> "
      # puts secret_sequence = @game.colors_to_guess
    @user_guess = gets.chomp.downcase
      if (@user_guess == 'q') || (@user_guess == 'quit')
      MasterMindPrinter.user_quits_in_middle_of_game
      return user_input_upon_start_menu
      elsif (@user_guess == 'c') || (@user_guess == 'cheat')
        @game.cheat
      elsif @user_guess.length < 4
        MasterMindPrinter.user_guesses_too_short
      elsif @user_guess.length > 4
        MasterMindPrinter.user_guesses_too_long
      elsif @user_guess.length == 4 
        user_starts_guessing 
        break  
      end
    end
  end

  # game_flow_transition_some_correct_guesses
  def user_starts_guessing
    @correct = false
    @time.start_time
    print "> "
    while !@correct
      game_flow_correct_colors_and_positions
      #end_game_flow
      @correct = true
    end
  end

    #transition
    # break_down_for_count = user_guess.chars
    # a,b,c,d = break_down_for_count
    # iterate
    # compare guess to secret sequenc
  def game_flow_correct_colors_and_positions
    secret_chars = @game.colors_to_guess.chars
    @user_guess.chars.each do |letter|
      secret_chars.include?(letter)
      @game.counts[letter] += 1
    end
      puts @game.counts 
  end

  def calculate_correct_colors_and_positions
    
  end 

  def end_game_flow

  end

end
 

