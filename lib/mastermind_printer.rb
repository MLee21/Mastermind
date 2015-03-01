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
    puts "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. \n Use (q)uit at any time
    to end the game. What's your guess?"
  end                                    

  def self.user_guesses_correctly(user_guess, correct_sequence, elapsed_time)
    puts "Congratulations! You guessed the sequence #{correct_sequence} 
    in #{user_guess} guesses over #{elapsed_time}."
  end                                                      

  def self.user_guesses_too_short
    puts "It's too short!"
  end                             

  def self.user_guesses_too_long
    puts "It's too long!"
  end                             

  def self.correct_number_of_elements_and_positions(guess, number_of_correct_colors, number_of_correct_positions, number_of_guesses)
    "'#{guess}'has #{number_of_correct_colors} of the correct elements with #{number_of_correct_positions} in the correct positions. \nYou've taken #{number_of_guesses} guess(es)."
  end

  #clean this up
  def self.instructions
    puts '"You will have a choice of choosing a combination between four colors: (r)ed, (g)reen, (b)lue, (y)ellow." 
    "You may choose a combination containing anything from four different colors or four of the same color."
    "To create your guess, input a four letter combination. Example: rrby. Keep guessing until you have figured out the combination!"'    
  end                                                                                                                                   

  def self.user_return_to_main_menu
    puts "Would you like to return to the main menu? (y) or (n)?"
  end                                                              # => nil

  def self.user_quit
    puts "Goodbye"
  end  

  def self.user_quits_in_middle_of_game
    puts "Thank you for playing! Goodbye!"
  end 
              

end



