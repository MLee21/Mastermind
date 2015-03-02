require_relative 'mastermind_user_input'
require_relative 'mastermind_game'

module MasterMindPrinter

  def self.file=(file)
    @file = file
  end                  

  def self.puts(message)
    @file.puts(message)
  end                    

  def self.greeting
    puts "WELCOME TO

• ▌ ▄ ·.  ▄▄▄· .▄▄ · ▄▄▄▄▄▄▄▄ .▄▄▄  • ▌ ▄ ·. ▪   ▐ ▄ ·▄▄▄▄  
·██ ▐███▪▐█ ▀█ ▐█ ▀. •██  ▀▄.▀·▀▄ █··██ ▐███▪██ •█▌▐███▪ ██ 
▐█ ▌▐▌▐█·▄█▀▀█ ▄▀▀▀█▄ ▐█.▪▐▀▀▪▄▐▀▀▄ ▐█ ▌▐▌▐█·▐█·▐█▐▐▌▐█· ▐█▌
██ ██▌▐█▌▐█ ▪▐▌▐█▄▪▐█ ▐█▌·▐█▄▄▌▐█•█▌██ ██▌▐█▌▐█▌██▐█▌██. ██ 
▀▀  █▪▀▀▀ ▀  ▀  ▀▀▀▀  ▀▀▀  ▀▀▀ .▀  ▀▀▀  █▪▀▀▀▀▀▀▀▀ █▪▀▀▀▀▀•"
  end                             

  def self.menu
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end                                                               

   def self.user_picks_p
    puts "I have generated a beginner sequence with four elements made up of:\n(r)ed, (g)reen, (b)lue, and (y)ellow.\nUse (q)uit at any time to end the game.\nWhat's your guess?"
  end                                    

  def self.user_guesses_correctly(user_guess, correct_sequence, elapsed_time)
    puts "Congratulations! You guessed the sequence #{correct_sequence} 
    in #{user_guess} guesses over #{elapsed_time}."
  end                                                      

  def self.user_guess_too_short
    puts "It's too short!"
  end                             

  def self.user_guess_too_long
    puts "It's too long!"
  end                             

  def self.correct_number_of_elements_and_positions(guess, number_of_correct_colors, number_of_correct_positions, number_of_guesses)
    "'#{guess}'has #{number_of_correct_colors} of the correct elements with #{number_of_correct_positions} in the correct positions.\nYou've taken #{number_of_guesses} guess(es)."
  end

  #clean this up
  def self.instructions
    puts "Instructions:
    \nYou will have a choice of choosing a combination between four colors:\n(r)ed, (g)reen, (b)lue, (y)ellow. 
    \nYou may choose a combination containing anything from four different colors\nor four of the same color.
    \nTo create your guess, input a four letter combination.\nExample: RRBY. Keep guessing until you have figured out the combination!\n\n"   
  end                                                                                                                                   

  def self.user_return_to_main_menu
    puts "Would you like to return to the main menu? (y) or (n)?"
  end                                                            

  def self.user_quit
    puts "Goodbye"
  end  

  def self.user_quits_in_middle_of_game
    puts "Thank you for playing! Goodbye!"
  end 
              

end



