require "exersise1_debugging"

RSpec.describe "say_hello" do
    it "takes the name from the arguments and returns the whole sentence" do
    result = say_hello("Kay")
    expect(result).to eq "hello Kay"
    end
end