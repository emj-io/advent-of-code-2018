require 'day_01'

describe Day01::PuzzleA do
  describe '.result_frequency' do
    it 'adds 0 plus all deltas' do
      test_deltas = [1, 2, 3]
      expect(Day01::PuzzleA.result_frequency(test_deltas)).to eq (0+1+2+3)
    end

    it 'raises if any delta is not +-able' do
      test_deltas = [1, 2, :zombo]
      expect { Day01::PuzzleA.result_frequency(test_deltas) }.to raise_error(TypeError)
    end
  end
end
