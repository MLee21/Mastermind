class MasterMindGame

  attr_accessor :colors_to_guess, :counts, :user_guesses, :total_colors, :total_positions

  def initialize(colors_to_guess=secret_colors_generator)
    @colors_to_guess = colors_to_guess
    @total_colors = total_colors
    @total_positions = total_positions
    @user_guesses = 0   
    @counts = Hash.new 0             
  end                                                      

  def secret_colors_generator
    ("rybg" * 4).chars.shuffle.take(4).join("")  
  end                                            

  def cheat
    puts @colors_to_guess
  end
end  

class GuessingTimer

attr_accessor :start_time, :end_time

def initialize
  @start_time = Time.now
  @end_time = Time.now
end

def calculate_time_until_user_guesses_correctly
  time_elapsed = @end_time - @start_time 
end








end
