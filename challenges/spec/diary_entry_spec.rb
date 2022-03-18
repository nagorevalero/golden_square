require "diary_entry"

RSpec.describe DiaryEntry do
  it "takes the title and it returns as a string" do
    diary = DiaryEntry.new("This is my title", 
    "This is my contents")
    expect(diary.title).to eq "This is my title"
    expect(diary.contents).to eq "This is my contents"
  end

  it "returns the number of words of the contents" do
    diary = DiaryEntry.new("This is another title" , "This is another contents")
    expect(diary.word_count).to eq 4
  end

  it "returns the amount of time needed to read an entry" do
    diary = DiaryEntry.new("This is another title" , "This is another contents")
    expect(diary.reading_time(8)).to eq 0.50
    expect(diary.reading_time(1)).to eq 4.0
  end

  it "returns text read in the alloted amount of time" do
    diary = DiaryEntry.new("This is another title" , "The end")
    wpm = 1
    alloted_time = 1
    expect(diary.reading_chunk(wpm,alloted_time)).to eq "The"
  end

  it "returns remainder of text read in the alloted amount of time" do
    diary = DiaryEntry.new("This is another title" , "The end")
    wpm = 1
    alloted_time = 1
    expect(diary.reading_chunk(wpm,alloted_time)).to eq "The"
    expect(diary.reading_chunk(wpm,alloted_time)).to eq "end"
  end
end