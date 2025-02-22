class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def sum
    return 0 if @numbers.empty?
    if @numbers.start_with?("//")
      delimiter_section, numbers = @numbers.split("\n", 2)
      custom_delimiter = delimiter_section[2..-1]
    else
      custom_delimiter = ","
    end
    @numbers.gsub("\n", custom_delimiter).split(custom_delimiter).map(&:to_i).sum
  end
end