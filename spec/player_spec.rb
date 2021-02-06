require 'player'

describe Player do
  it { is_expected.to respond_to :score }

  describe '#score' do
    context 'on initialization' do
      subject { described_class.new.score }
      it { is_expected.to be 0 }
    end
  end
end
