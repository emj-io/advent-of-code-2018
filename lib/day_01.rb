module Day01
  module PuzzleA
    START_FREQUENCY = 0
    def self.result_frequency_of_file(filename_with_path)
      lines = Helpers::InputHelpers.filename_to_array_of_strings(filename_with_path)
    end

    def self.result_frequency_of_array(deltas)
      START_FREQUENCY + deltas.reduce(:+)
    end
  end
end
