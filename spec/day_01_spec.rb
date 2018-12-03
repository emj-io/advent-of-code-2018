require 'day_01'
require 'helpers/input_helpers'

describe Day01::PuzzleA do
  describe '.result_frequency_of_array' do
    it 'adds 0 plus all deltas' do
      test_deltas = [1, 2, 3]
      expect(Day01::PuzzleA.result_frequency_of_array(test_deltas)).to eq (Day01::PuzzleA::START_FREQUENCY + 1 + 2 + 3)
    end

    it 'raises if any delta is not +-able' do
      test_deltas = [1, 2, :zombo]
      expect { Day01::PuzzleA.result_frequency_of_array(test_deltas) }.to raise_error(TypeError)
    end
  end

  describe '.result_frequency_of_file' do
    it 'adds numbers in a file' do
      filename = File.join(File.dirname(__FILE__), 'fixtures/files/day_01_puzzle_a.txt')
      raw = Helpers::InputHelpers.filename_to_array_of_strings(filename)
      parsed = Helpers::InputHelpers.parse_signed_numbers(raw)
      expect(Day01::PuzzleA.result_frequency_of_array(parsed)).to eq(425)
    end
  end
end
