require 'dice'

describe Dice do
  describe '#roll' do
    before(:each) { srand(1) }
    it {is_expected.to respond_to :roll }

    it 'gives a number between 1 and 6' do
      expect(subject.roll.first).to be_between(1, 6)
    end

    it 'is random' do
      expect(subject.roll).to eq [6]
    end

    context 'when rolling multiple dice' do
      it 'takes an argument' do
        expect(subject).to respond_to(:roll).with(1)
      end

      it 'rolls 2 dice when argument is 2' do
        expect(subject.roll(2).count).to eq 2
      end

      it 'rolls 5 dice when argument is 5' do
        expect(subject.roll(5).count).to eq 5
      end
    end

    context 'after successive roles' do
      before(:example) { @roll_1, @roll_2 = subject.roll, subject.roll }

      it 'returns the current role only' do
        expect(@roll_2.count).to eq 1
      end
    end

    context 'keeps track of rolls' do
      it 'adds a roll to rolls' do
        roll = subject.roll
        expect(subject.rolls).to include(roll)
      end
    end

    describe '#rolls' do
      it 'shows previous rolls' do
        expect(subject.rolls)
      end
    end
  end
end
