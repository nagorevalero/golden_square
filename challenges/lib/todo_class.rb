# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.
# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TodoTasks

	def initialize
	@task_array = []
	end

  def add(task)
	@task_array.push(task)
		return @task_array
	end 

	def remove(task)
		if @task_array.include?(task)
			@task_array.delete(task)
			return @task_array
		else
			fail "This task does not exist"
		end
	end
end


