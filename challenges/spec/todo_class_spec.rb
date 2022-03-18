require "todo_class"

RSpec.describe TodoTasks do

  it "adds the tasks to my todo list and it returns the list" do
  my_list = TodoTasks.new
  expect(my_list.add("This is my first task")).to eq ["This is my first task"]
  expect(my_list.add("This is my second task")).to eq ["This is my first task", "This is my second task"]
  expect(my_list.add("This is my third task")).to eq ["This is my first task", "This is my second task", "This is my third task"]
  end

  it "marks a task that has been completed and it removes it" do
  my_list = TodoTasks.new
  expect(my_list.add("This is my first task")).to eq ["This is my first task"]
  expect(my_list.add("This is my second task")).to eq ["This is my first task", "This is my second task"]
  expect(my_list.add("This is my third task")).to eq ["This is my first task", "This is my second task","This is my third task"]
  expect(my_list.remove("This is my second task")).to eq ["This is my first task", "This is my third task"]
  # expect(my_list.remove("Hello Sai")).to eq "This task does not exist"
  end

# ANOTHER EXAMPLE IF IT IS A FAIL
  it "raises an error when that task is not in the list" do
  my_list = TodoTasks.new
  expect(my_list.add("This is my first task")).to eq ["This is my first task"]
  expect(my_list.add("This is my second task")).to eq ["This is my first task", "This is my second task"]
  expect(my_list.add("This is my third task")).to eq ["This is my first task", "This is my second task","This is my third task"]
  expect{ my_list.remove("My name is Nagore") }.to raise_error "This task does not exist"
  end
end

