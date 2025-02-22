# string_calculator

## Overview
The **String Calculator** is a Ruby implementation that parses and sums numbers from a given string input. It supports various delimiters, handles edge cases, and raises exceptions for invalid inputs.

## Features
- Returns `0` for an empty string.
- Returns the sum of numbers separated by commas (`,`) or newlines (`\n`).
- Supports custom delimiters defined in the format: `//[delimiter]\n[numbers]`.
- Supports multiple delimiters, including multi-character delimiters (e.g., `//[***]\n1***2***3`).
- Ignores numbers greater than `1000`.
- Raises an exception for negative numbers, specifying which numbers were negative.

## Installation
### Prerequisites
- Ruby installed (`>= 2.7` recommended).
- Bundler installed (`gem install bundler`).
- RSpec for testing (`bundle install`).

## Usage
### Running the Calculator
```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new
puts calculator.add("1,2,3")  # Output: 6
puts calculator.add("//[***]\n1***2***3")  # Output: 6
puts calculator.add("//[*][%]\n1*2%3")  # Output: 6
puts calculator.add("2,1001")  # Output: 2 (ignores 1001)
```

### Exception Handling
If negative numbers are present, an error is raised:

## Running Tests
This project uses RSpec for testing. To run the tests:
```sh
rspec
```

## Commit History
### Recent Commits
- Implemented handling of numbers greater than 1000.
- Handled negative numbers by raising an exception.
- Added support for multiple delimiters and multi-character delimiters.
- Implemented support for custom delimiters.
- Initial setup with basic test cases.

## License
This project is open-source and available under the MIT License.

