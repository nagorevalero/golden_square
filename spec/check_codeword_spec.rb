require "check_codeword"

RSpec.describe "check_codeword method" do
  it "takes 'horse' and returns 'Correct! Come in.'" do
  result = check_codeword("horse")
  expect(result).to eq "Correct! Come in."
  end

  it "takes codeword.chars.first == 'h' && codeword.chars.last == 'e' 
  and returns 'Close, but nope.'" do
  result = check_codeword("home")
  expect(result).to eq "Close, but nope."
  end

  it "takes the incorrect input and returns 'WRONG!'" do
  result = check_codeword("chair")
  expect(result).to eq "WRONG!"
  end
end