class Dice
  attr_accessor :rolls

  def initialize
    @rolls = []
  end

  def roll(number = 1)
    number.times { roll_tracker << rand(1..6) }
  end

  def roll_tracker
    result = []
  end
end
