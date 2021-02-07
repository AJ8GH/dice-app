class Dice
  def roll(number_of_dice = 1)
    return_rolls(number_of_dice)
  end

  private

  def return_rolls(number_of_dice)
    rolls = []
    number_of_dice.times { rolls << side }
    rolls
  end

  def side
    rand(1..6)
  end
end
