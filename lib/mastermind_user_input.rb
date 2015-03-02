require_relative 'mastermind_game'
require_relative 'mastermind_printer'
require 'pry'

#Business Logic
class MasterMindUserInput
  include MasterMindPrinter

  attr_accessor :user_guess, :continue

  def initialize
    @game = MasterMindGame.new 
    @user_guess = user_guess
  end

  def correct?
    @user_guess == @game.colors_to_guess 
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
        break
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
      elsif (@user_guess.length == 4) && !correct? 
        @game.start_time
        game_flow_correct_colors
        game_flow_correct_positions
        @game.user_guesses += 1
        user_has_a_few_elements_correct 
      else correct?
        end_game_flow
        break
      end
    end
  end

  def game_flow_correct_colors
    results = []
    color_counts = Hash.new 0 
    secret_chars = @game.colors_to_guess.chars
    user_guess_chars = @user_guess.chars
    user_guess_chars.each_with_index.map do |x,i|
      if secret_chars.include?(x)
        color_counts[x] += 1
      end
    end
      color_counts 
      color_counts.each_value {|v| results << v} 
      results 
      @game.total_colors = results.reduce(:+)
  end

  def user_has_a_few_elements_correct
    puts "'#{@user_guess.upcase}' has #{@game.total_colors} correct element(s)\nwith #{@game.total_positions} correct position(s).
    You've taken #{@game.user_guesses} guess(es)."
  end   

  def game_flow_correct_positions
    results = [] 
    position_counts = Hash.new 0 
    secret_chars = @game.colors_to_guess.chars
    user_guess_chars = @user_guess.chars
    user_guess_chars.each_with_index.map do |x,i|
      if user_guess_chars[i] == secret_chars[i]
        position_counts[x] += 1
      end
    end
      position_counts
      position_counts.each_value {|v| results << v}
      results
      @game.total_positions = results.reduce(:+)
  end

  def end_game_flow
    puts "Congratulations! You guessed the sequence '#{@game.colors_to_guess.upcase}' in #{@game.user_guesses} guess(es) over #{@game.elapsed_time}."
  end

end
 

