require "greet"

RSpec.describe "greet method" do
	it "takes the input and returns Hello, Nagore" do
  	result = greet("Nagore")
  	expect(result).to eq "Hello, Nagore!"
  end
end