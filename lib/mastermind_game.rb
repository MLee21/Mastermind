class MasterMindGame

  attr_accessor :colors_to_guess, :user_guesses, :total_colors, :total_positions, :start_time, :end_time

  def initialize(colors_to_guess=secret_colors_generator)
    @colors_to_guess = colors_to_guess
    @total_colors = total_colors
    @total_positions = total_positions
    @user_guesses = 0   
    @start_time = Time.now
    @end_time = Time.now          
  end                                                      

  def secret_colors_generator
    ("rybg" * 4).chars.shuffle.take(4).join("")  
  end                                            

  def cheat
    puts @colors_to_guess.upcase
  end

  def elapsed_time
    @end_time - @start_time 
  end
end
  