class Present
  def wrap(contents)
    fail "A contents has already been wrapped." unless @contents.nil?
    @contents = contents
  end

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end
end

# require 'reminder'
# RSpec.describe Reminder do
#   context "when no task is set" do
#     it "fails" do
#       reminder = Reminder.new("Kay")
#       expect { reminder.remind() }.to raise_error "No reminder set!"
#     end
#   end
# end