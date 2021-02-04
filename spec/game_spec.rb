require 'game'

describe Game do
  describe '#score' do
    it { is_expected.to respond_to :score }
  end

  describe '#dice' do
    subject { described_class.new.dice }
    context 'when called' do
      it { is_expected.to be_an_instance_of Dice }
    end
  end
end
