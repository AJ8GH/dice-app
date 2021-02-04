class Dice
  attr_accessor :rolls

  def initialize
    @rolls = []
  end

  def roll(number = 1)
    result = []
    number.times { result << rand(1..6) }
    rolls.unshift(result)
    result
  end
end
