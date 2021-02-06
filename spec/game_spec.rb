require 'game'

describe Game do
  describe '#rolls' do
    it 'shows rolls array' do
      expect(subject.rolls).to eq []
    end
  end

  describe '#dice' do
    subject { described_class.new.dice }
    context 'when called' do
      it { is_expected.to be_an_instance_of Dice }
    end
  end
end
