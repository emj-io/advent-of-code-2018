module Helpers
  module InputHelpers
    def self.filename_to_array_of_strings(filename)
      File.open(filename, 'r') do |file|
        file.readlines.map {|line| line.strip}
      end
    end

    def self.parse_signed_numbers(arr)
      arr.map {|x| x.to_f }
    end
  end
end
