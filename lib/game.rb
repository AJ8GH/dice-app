class Game
  attr_reader :dice

  def initialize
    @dice = Dice.new
  end
end
