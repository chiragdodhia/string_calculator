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
  end
end