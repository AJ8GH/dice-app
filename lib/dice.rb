class Dice
  attr_reader :sides

  def roll(number_of_dice = 1)
    return_rolls(number_of_dice)
  end

  private

  def initialize(sides = 6)
    @sides = sides
  end

  def return_rolls(number_of_dice)
    rolls = []
    number_of_dice.times { rolls << result }
    rolls
  end

  def result
    rand(1..sides)
  end
end
