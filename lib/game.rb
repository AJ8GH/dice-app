class Game
  attr_accessor :score
  attr_reader :dice

  def initialize
    @dice = Dice.new
    @score = 0
  end
end
