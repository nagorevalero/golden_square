require "grammar_challenge"

RSpec.describe GrammarStats do
    it "checks if the string begins with a  capital letter and ends with a sentence-ending puntuation mark '!, ?, .' --- it return true if it contains those elements" do
    grammar = GrammarStats.new
    expect(grammar.check("Hello.")).to eq true
    end

    it "checks if the string begins with a  capital letter and ends with a sentence-ending puntuation mark '!, ?, .' --- it returns false if it doesn't contain those elements" do
    grammar = GrammarStats.new
    expect(grammar.check("hello.")).to eq false
    end

    it "looks at character and it returns true if there is a punctuation mark" do
    grammar = GrammarStats.new
    expect(grammar.punctuation_mark?(".")).to eq true
    expect(grammar.punctuation_mark?("!")).to eq true
    expect(grammar.punctuation_mark?("?")).to eq true
    expect(grammar.punctuation_mark?("a")).to eq false
    end

    it "checks the text and it returns the percentage of texted checked as a integrer" do
    grammar = GrammarStats.new
    grammar.check("My name Nagore.") #this should pass
    # grammar.check("I live in Birmingham!") #this should pass
    grammar.check("my name is Nagore") #this should not pass 
    # grammar.check("i live in Birminham?") #this should not pass

    expect(grammar.percentage_good).to eq 50
    end
end