require "report_length"

RSpec.describe "report_length method" do

  it "given string 'hello' returns 'This string was 5 characters long.'" do
    result = report_length("hello")
    expect(result). to eq "This string was 5 characters long."
  end
end