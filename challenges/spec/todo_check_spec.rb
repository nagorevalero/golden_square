require "todo_check"

RSpec.describe "todo_check" do
    
    it "takes the string and checks if @TODO is included" do

    string = "@TODO, pick up my washing"
    expect(todo_check(string)).to eq true
    string2 = "Go shopping @ToDo"
    expect(todo_check(string2)).to eq true

    string3 = "Collect children from school"
    expect(todo_check(string3)).to eq false
    string4 = "This is my todo list"
    expect(todo_check(string4)).to eq false

    end
end 