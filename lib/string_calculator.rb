class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def sum
    return 0 if @numbers.empty?
    custom_delimiter = ","
    @numbers.gsub("\n", custom_delimiter).split(custom_delimiter).map(&:to_i).sum
  end
end