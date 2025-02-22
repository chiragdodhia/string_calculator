class NegativeNumberError < StandardError
  def initialize(negatives)
    super("Negatives not allowed: #{negatives.join(', ')}")
  end
end