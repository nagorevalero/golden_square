class GrammarStats
    def initialize
			@text_check = 0
			@text_passed = 0
    end
  
    def check(text) 
      characters = text.chars
      if uppercase?(characters.first) && punctuation_mark?(characters.last)
					@text_check += 1
					@text_passed += 1
        	return true
      else 
					@text_check += 1
          return false
      end
    end

    def punctuation_mark?(character)
        return character == "!" || character == "?" || character == "."
    end

    def uppercase?(character)
      return character == character.upcase
    end

    def percentage_good
			return (@text_passed / @text_check.to_f) * 100

      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end