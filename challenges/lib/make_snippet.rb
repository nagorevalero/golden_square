def make_snippet(str)
  str_words_array = str.split(" ") 
  first_five_words = str_words_array.first(5).join(" ")
  if str_words_array.length > 5
    return first_five_words + "..."
  else 
    return str
  end
end