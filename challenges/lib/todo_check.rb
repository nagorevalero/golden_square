# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string @TODO.

def todo_check(string)
	if string.downcase.include?("@todo")
		return true
	else
		return false
	end
end

