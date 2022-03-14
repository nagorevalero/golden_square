# A method called count_words that takes a string as an argument and returns the number of words in that string.

def count_words(string)
    count_words_array = string.split(" ").count
    return count_words_array
end