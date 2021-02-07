describe Player do
  it { is_expected.to respond_to(:score).with 0 }

  describe '#score' do
    subject { described_class.new.score }
    context 'when initialized' do
      it { is_expected.to be_zero }
    end

    context 'after single dice roll' do
      it { is_expected.to be_between 1, 6 }
    end
  end
end
