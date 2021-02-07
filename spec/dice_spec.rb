describe Dice do
  it { is_expected.to respond_to(:roll).with 0..1 }

  describe '#roll' do
    context 'with no arguments' do
      subject { described_class.new.roll.pop }
      it { is_expected.to be_between 1, 6}
    end

    context 'with argument 2' do
      it 'returns 2 numbers' do
        expect(subject.roll(2).count).to be 2
      end
    end
  end
end
