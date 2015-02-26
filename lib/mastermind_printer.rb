module MasterMindPrinter

  def self.file=(file)
    @file = file
  end                  

  def self.puts(message)
    @file.puts(message)
  end                    

  def self.greeting
    puts "Welcome to MASTERMIND!"
  end                             

  def self.menu
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end                                                               

   def self.user_picks_p
    puts "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time
    to end the game. What's your guess?"
  end                                    

  def self.user_guesses_correctly
    puts "Congratulations! You guess the sequence #{correct_sequence} 
    in #{user_guess.count} guesses over #{elapsed_time}."
  end                                                      

  def self.user_guesses_too_short
    puts "It's too short!"
  end                             

  def self.user_guesses_too_long
    puts "It's too long!"
  end                             

  def self.user_has_a_few_elements_correct
    puts "#{user_guess} has #{correct_element_guess.count} elements
    with #{correct_position_guess.count} positions. You've
    taken #{guess.count} guess."
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
    puts "Goodbye!"
  end                 




