require_relative 'printer'
require_relative 'game'

class Runner

#greeting

# Has a menu that accepts p to play and q to quit
# When the user selects play...
  def play
       input = gets.chomp
    if input == 'p'
       printer = Printer.new
       #instantiate game
       #create secret number
       game = Game.new
       game.secret_number
       "Here is your not so secret number: #{game.secret_number}."
       printer.make_guess
       #allow them to guess
       # runner = Runner.new
       # runner.input_user_guess
    elsif input == 'q'
        printer.quit_menu
    end
  end

def input_user_guess
    continue = true
  while continue
    guess = gets.chomp.to_i
    response = game.evaluate_guess(guess)
    #give an array of two things
    #signal to continue/stop loop
    #message to print
    signal = response[0]
    message = response[1]
    #print out message, if signal is :stop, stop loop
    printer.send(message)
    if signal == :stop
      continue = false
  case response
      when :too_low then printer.guess_too_low
      when :too_high then printer.guess_too_high
      when :winner
    won = true
    printer.winner
      end
  end
end
#goodbye

end

printer = Printer.new
puts printer.greeting
puts printer.menu
runner = Runner.new
puts runner.play
