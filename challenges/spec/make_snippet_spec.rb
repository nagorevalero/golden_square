require "make_snippet"

RSpec.describe "make_snippet method" do
  it "takes the string and it returns a the same string iif it is shorter than 6 words" do
  	expect(make_snippet("my favourite top")).to eq "my favourite top"
		expect(make_snippet("my favourite top is blue")).to eq "my favourite top is blue"
  end

	it "takes the string and it returns the first 5 words + ... if the sentences is longer than 5 words" do
		expect(make_snippet("my favourite top has stripes on it")).to eq "my favourite top has stripes..."
	end
end