require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "#sum" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new("").sum).to eq(0)
    end
  end
end