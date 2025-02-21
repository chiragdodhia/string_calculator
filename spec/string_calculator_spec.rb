require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "#sum" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new("").sum).to eq(0)
    end

    it "returns the same number for a single number" do
      expect(StringCalculator.new("7").sum).to eq(7)
    end
  end
end