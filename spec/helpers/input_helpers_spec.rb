require 'helpers/input_helpers'

describe Helpers::InputHelpers do
  describe '.parse_signed_numbers' do
    it 'turns an array of strings into an array of floats' do
      test_arr = ['-1', 0, '+1']
      expect(Helpers::InputHelpers.parse_signed_numbers(test_arr))
        .to eq [-1.0, 0.0, 1.0]
    end
  end

  describe '.filename_to_array_of_strings' do
    it 'reads a file and returns the content as an array of strings' do
      file = File.join(File.dirname(__FILE__),
                       '../fixtures/files/filename_to_array_of_strings.txt')
      expect(Helpers::InputHelpers.filename_to_array_of_strings(file))
        .to eq ['First', 'Second', 'Third']
    end
  end
end
