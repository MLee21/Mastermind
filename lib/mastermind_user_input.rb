require_relative 'mastermind_game'
require_relative 'mastermind_printer'

#Business Logic
class MasterMindUserInput
  include MasterMindPrinter

  def initialize
    @game = MasterMindGame.new 
    @correct = false
  end

  def user_input_upon_start_menu
    MasterMindPrinter.greeting 
    "\n\n"
    # get response of i,q,or p
    # if i - instructions - from instructions - q or p
      #if p - game flow
      #if q - exit game
    #if q - exit game
    #if p - game flow
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
    puts secret_sequence = @game.colors_to_guess
    response = gets.chomp.downcase
      if response.length < 4
        MasterMindPrinter.user_guesses_too_short
      elsif response.length > 4
        MasterMindPrinter.user_guesses_too_long
      else response.length == 4
        #user_starts_guessing_method
        break
      end
    end
  end


  #game_flow_transition_some_correct_guesses
  def user_starts_guessing
    @correct = false
    print "> "
    puts secret_sequence = @game.colors_to_guess
    user_guess = gets.chomp.downcase
    while !correct
      #game_flow_correct_colors_correct_positions
      #end_game_flow
      elsif user_guess == 'c'|| user_guess == 'cheat'
        @game.cheat
      else user_guess == 'q'|| user_guess == 'quit'
        MasterMindPrinter.user_quit
        break
      end
    end
  end
    #transition
    # break_down_for_count = user_guess.chars
    # a,b,c,d = break_down_for_count
    # iterate
    # compare guess to secret sequenc
  def game_flow_correct_colors_correct_positions

    
  end

  def end_game_flow

  end

end

