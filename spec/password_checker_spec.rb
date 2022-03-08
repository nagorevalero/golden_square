require "password_checker"

RSpec.describe PasswordChecker do
    it "sees the password and returns true if it has 8+ characters." do
        password_checker = PasswordChecker.new
        result = password_checker.check("carrotss")
        expect(result).to eq true
    end

    it "fails if the password has less that 8 chars" do
        password_checker = PasswordChecker.new
        expect{ password_checker.check("cat") }.to raise_error "Invalid password, must be 8+ characters."
    end
end