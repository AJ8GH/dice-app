class Game
  attr_reader :dice

  def initialize
    @players = []
    @dice = Dice.new
  end
end
