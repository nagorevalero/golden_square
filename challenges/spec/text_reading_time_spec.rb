# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

require 'text_reading_time'

RSpec.describe Text_reading do

  it 'takes the empty string, it counts the number of the wordsand it gives the amout of seconds to ready a text roundedup'do
  text_reading = Text_reading.new
  text_reading.word_count("Hello Nemo, it was nice to meet you inthe great barrier reef the other day.")
	result = text_reading.read_time
  expect(result).to eq 5
	end

end
    

#     it "takes an empty string" do
#         expect(read_time("")).to eq 0
#     end

#     it "counts the number of words in the string" do
#         read_time("Hello my name is nemo, come find me")
#         expect(@word_count).to eq 8
#         read_time("Hello World!")
#         expect(@word_count).to eq 2
#     end

#     it "gives amount of seconds to read a text rounded up to the nearest second" do
        
#         text1 = "Hello Nemo, it was nice to meet you in the great barrier reef the other day. I loved your story. I am sorry you lost your way and I hope you find your dad soon. Send knarly vibes, from Crush."
#         #takes 60s to read 200 words meaning each word takes 0.3s to read. The text has 40 words.
#         expect(read_time(text1)).to eq 12

#         text2 = "Hello Nemo, it was nice to meet you in the great barrier reef the other day."
#         #takes 60s to read 200 words meaning each word takes 0.3s to read. The text has 16 words.
#         expect(read_time(text2)).to eq 5

#         text3 = "These are examples of the method being called with particular arguments, and what the method should return in each situation. For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address."
#         #takes 60s to read 200 words meaning each word takes 0.3s to read. The text has 62 words.
#         expect(read_time(text3)).to eq 19
#     end
    
# end