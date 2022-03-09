require "make_snippet"

RSpec.describe "make_snippet method" do
  it "takes the string and it turns into an array" do
		make_snippet("my favourite top has stripes on it")
		result = @str
  	expect(result).to eq ["my", "favourite", "top", "has", "stripes", "on", "it"]
  end


	it "slices the string and keep five elements" do
		make_snippet("my favourite top has stripes on it")
		result = @str.slice(0,5)
		expect(result).to eq ["my", "favourite", "top", "has", "stripes"]
	end

end