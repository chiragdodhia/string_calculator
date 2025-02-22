require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "#sum" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new("").sum).to eq(0)
    end

    it "returns the same number for a single number" do
      expect(StringCalculator.new("3").sum).to eq(3)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.new("5,7").sum).to eq(12)
    end

    it "returns the sum of three numbers seperated by a new ine" do
      expect(StringCalculator.new("5\n7,3").sum).to eq(15)
    end

    it "returns the sum of two numbers handled by a custom delimiter" do
      expect(StringCalculator.new("//;\n3;5").sum).to eq(8)
    end

    it "returns the sum of two numbers handled by multiple custom delimiters" do
      expect(StringCalculator.new("//[*][%]\n3*4%7").sum).to eq(14)
    end

    it "returns the sum of two numbers handled by custom delimiter with length longer than one char" do
      expect(StringCalculator.new("//[***]\n3***4***7").sum).to eq(14)
    end

    it "raises an exception when negatives are present" do
      calculator = StringCalculator.new("3,-4,-7,8")
      expect { calculator.sum }.to raise_error(NegativeNumberError)
    end
  end
end