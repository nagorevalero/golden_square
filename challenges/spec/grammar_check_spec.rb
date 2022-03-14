require 'grammar_check'

RSpec.describe "grammar_check method" do
    
    it "returns true if a sentence starts with a capital letter and ends with a '.', '!' or '?'" do
        sentence1 = "Hello, is it me you're looking for?"
        expect(grammar_check(sentence1)).to eq true
        sentence2 = "Come say hello to me."
        expect(grammar_check(sentence2)).to eq true
        sentence3 = "Petrol is so expensive nowadays!"
        expect(grammar_check(sentence3)).to eq true
    end

    it "returns false if a sentence doesn't start with a capital letter and ends with a '.', '!' or '?'" do
        sentence4 = "hello, is it me you're looking for"
        expect(grammar_check(sentence4)).to eq false
        sentence5 = "Hello Nemo, I can see you"
        expect(grammar_check(sentence5)).to eq false
        sentence6 = "hello, I'm still using a similar example."
        expect(grammar_check(sentence6)).to eq false
    end


end