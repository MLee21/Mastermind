class MasterMindGame

  attr_reader :colors_to_guess  # => nil

  def initialize(colors_to_guess=secret_colors_generator)
    @colors_to_guess = colors_to_guess                     # => "rrrr", "rgrg"
  end                                                      # => nil

  def secret_colors_generator
    ("rybg" * 4).chars.shuffle.take(4).join("")  # => "rgrg"
  end                                            # => nil

  #   def user_quits_at_any_point

  #   end
end  # => nil


