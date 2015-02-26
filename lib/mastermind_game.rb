class MasterMindGame

  attr_reader :colors_to_guess  

  def initialize(colors_to_guess=secret_colors_generator)
    @colors_to_guess = colors_to_guess                     
  end                                                      

  def secret_colors_generator
    ("rybg" * 4).chars.shuffle.take(4).join("")  
  end                                            

  def cheat
    puts @colors_to_guess
  end

  #   def user_quits_at_any_point

  #   end

end  

class GuessingTimer












end
