require "custom_exception"

class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def sum
    return 0 if @numbers.empty?
    all_delimiters = [","]
    if @numbers.start_with?("//")
      delimiter_section, @numbers = @numbers.split("\n", 2)
      delimiters = delimiter_section.scan(/\[(.*?)\]/).flatten
      all_delimiters = delimiters.empty? ? [delimiter_section[2]] : delimiters
    end
    all_delimiters = all_delimiters + ["\n"]
    num_list = @numbers.split(Regexp.union(all_delimiters)).map(&:to_i)
    negatives = num_list.select { |num| num < 0 }
    raise NegativeNumberError.new(negatives) unless negatives.empty?
    num_list.sum
  end
end