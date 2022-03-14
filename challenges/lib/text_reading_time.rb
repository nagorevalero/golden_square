class Text_reading

  def word_count(text)
  @word_count = text.split(' ').count
  end

  def read_time
  seconds_to_read = (@word_count * 0.3).round(0) 
  end

end

