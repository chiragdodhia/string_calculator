class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def sum
    return 0 if @numbers.empty?
    custom_delimiter = ","
    @numbers.split(",").map(&:to_i).sum
  end
end