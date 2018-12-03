module Day01
  module PuzzleA
    START_FREQUENCY = 0
    def self.result_frequency(deltas)
      START_FREQUENCY + deltas.reduce(:+)
    end
  end
end
