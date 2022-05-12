class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @remaining_words_to_read = contents.split(" ")
  end

  def title
    return @title.to_s
  end

  def contents
    return @contents
  end

  def word_count
    word_count_total = @contents.split(" ").count
    return word_count_total
  end

  def reading_time(wpm)
    return (word_count.to_f / wpm.to_f)
    #Returns the minutes it takes to read an amount of words at a specific speed
  end

  def reading_chunk(wpm, alloted_time)
    words_read = wpm * alloted_time
    sentence_read = @remaining_words_to_read.slice!(0...words_read).join(" ")

    return sentence_read
    # 1. We have the number of words we want to remove from @remaining_words_to_read
    # 2. We want to remove that amount of words from the beginning of @remaining_words_to_read
    # 3. store the removed words in a string (to return at the end)
    # 4. @remaining_words_to_read should be left with the remainder of the words

    #Returns a string consisting of the words read and leaves behind the remaining words that haven't been read
  end
end
	#calculate a range of the string and then we want to return what is left

# binding.irb
  
#     def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
#                                     # of words the user can read per minute
#                                     `minutes` is an integer representing the
#                                     number of minutes the user has to read
#       Returns a string with a chunk of the contents that the user could read
#       in the given number of minutes.
#       If called again, `reading_chunk` should return the next chunk, skipping
#       what has already been read, until the contents is fully read.
#       The next call after that it should restart from the beginning.
#     end
#   end