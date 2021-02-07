describe Dice do
  it { is_expected.to respond_to(:roll).with 0..1 }

  describe '#roll' do
    context 'with no arguments' do
      subject { described_class.new.roll }
      it { is_expected.to be_between 1, 6}
    end
  end
end
