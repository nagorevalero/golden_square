require "gratitudes"

RSpec.describe Gratitudes do
    it "takes the input gratitude and it pushes to the array. It also formates it" do
    gratitudes = Gratitudes.new
    gratitudes.add("thank you")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: thank you"
    end

end