require "count_words"

RSpec.describe "count_words" do
    it "takes the string and counts the words" do
        expect(count_words("Hello how are you")).to eq 4
    end
end