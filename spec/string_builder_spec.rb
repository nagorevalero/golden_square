require "string_builder"

RSpec.describe StringBuilder do
    it "takes the input, add it to the string and it counts the string characters" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    string_builder.size
    result = string_builder.output
		expect(result).to eq "Hello"
		end
	end