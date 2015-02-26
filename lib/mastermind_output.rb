#Printer
class Output

  def greeting
    puts "Welcome to MASTERMIND!"
  end

  def menu
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def user_picks_p
    puts "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time
    to end the game. What's your guess?"
  end

  def user_guesses_correctly
    puts "Congratulations! You guess the sequence #{correct_sequence} 
    in #{user_guess.count} guesses over #{elapsed_time}."
  end

  def user_guesses_too_short
    puts "It's too short!"
  end

  def user_guesses_too_long
    puts "It's too long!"
  end

  def user_has_a_few_elements_correct
    puts "#{user_guess} has #{correct_element_guess.count} elements
    with #{correct_position_guess.count} positions. You've
    taken #{guess.count} guess."
  end

  #clean this up
  def instructions
    puts "You will have a choice of choosing a combination between 
    four colors: (r)ed, (g)reen, (b)lue, (y)ellow."
    puts "You may choose a combination containing anything from four
    different colors or four of the same color."
    puts "To create your guess, input a four letter combination.  
    Example: rrby. Keep guessing until you have figured out the combination!"
    user_quit_instruction_two_choice_menu
  end

  def user_return_to_main_menu
    puts "Would you like to return to the main menu? (y) or (n)?"
  end

  def user_quit_instruction_two_choice_menu
    puts "Let's begin! Press (p)lay or q(uit)."
    input = gets.chomp
    if input == 'p'
      puts "Alright! Let's play!" #GAME FLOW METHOD
    elsif input == 'q'
      return menu
    end
  end 

  def user_quit
    puts "Goodbye!"
    user_return_to_main_menu
    input = gets.chomp
    if input == 'y' || input == 'yes'
      return menu
    elsif input == 'n' || input == 'no'
      "Thank you for playing!"
    end
  end 
end











