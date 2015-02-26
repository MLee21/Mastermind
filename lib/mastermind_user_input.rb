require_relative 'mastermind_game'
require_relative 'mastermind_printer'

#Business Logic
class MasterMindUserInput
  include MasterMindPrinter

  def initialize
    @game = MasterMindGame.new  
  end

  def user_input_upon_start_menu
    MasterMindPrinter.greeting
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
  end


  #game_flow_transition_some_correct_guesses
  def game_flow_correct_colors
      
  end
    

  def game_flow_correct_positions

  end

end

