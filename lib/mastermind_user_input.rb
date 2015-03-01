require_relative 'mastermind_game'
require_relative 'mastermind_printer'
require 'pry'

#Business Logic
class MasterMindUserInput
  include MasterMindPrinter

  attr_accessor :user_guess, :continue

  def initialize
    @game = MasterMindGame.new 
    @time = GuessingTimer.new
    @user_guess = user_guess
    @continue = false
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
      game_flow_correct_colors
      game_flow_correct_positions
      @game.user_guesses += 1 
      user_has_a_few_elements_correct
      # end_game_flow
      @correct = true
    end
  end

  def game_flow_correct_colors
    results = []
    color_counts = Hash.new 0 
    secret_chars = @game.colors_to_guess.chars
    user_guess_chars = @user_guess.chars
    user_guess_chars.each do |letter|
      if secret_chars.include?(letter)
        color_counts[letter] += 1
      end
    end
      puts color_counts 
      color_counts.each_value {|v| results << v} 
      results 
      @game.total_colors = results.reduce(:+)
  end

  def user_has_a_few_elements_correct
    puts "#{@user_guess} has #{@game.total_colors} correct elements
    with #{@game.total_positions} correct positions. You've
    taken #{@game.user_guesses} guess."
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
      puts position_counts
      position_counts.each_value {|v| results << v}
      puts results
      @game.total_positions = results.reduce(:+)
  end

  def end_game_flow
    "Congratulations"
  end

end
 

