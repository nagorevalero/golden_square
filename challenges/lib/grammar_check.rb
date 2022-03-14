# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


def grammar_check(sentence)
    sentence.slice(-1) == "." || sentence.slice(-1) == "!" || sentence.slice(-1) == "?" ? end_punc = true : end_punc = false
    sentence.slice(0) === sentence.slice(0).upcase ? capital = true : capital = false
    capital && end_punc === true ? true : false
end


TEST2

def verify(text)
    text.start_with?(/[A-Z]/) && text.end_with?(".","?","!")
end