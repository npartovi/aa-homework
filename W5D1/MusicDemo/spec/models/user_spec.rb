require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
		FactoryBot.build(:user,
			email: "npartovi@gmail.com",
			password: "password123")
		end

	it {should validate_presence_of(:email)}
	it {should validate_length_of(:password).is_at_least(6)}
	it {should validate_presence_of(:password_digest)}

	describe "#is_password?" do
		it "determines if the password is right" do
			expect(user.is_password?("password123").to be true)
		end

		it "determines if the password is wrong" do
			expect(user.is_password?("wrongpassword").to be false)
		end
	end

	describe "#reset_session_token" do
		it "new user is given a session token" do
			user.valid?
			old_session = user.reset_session_token
			user.reset_session_token

			expect(user.session_token).to_no eq(old_session)
		end

		it "gives a new session token" do
			expect(user.reset_session_token).to eq(user.session_token)
		end
	end

	describe "::find_by_credentials(username, password)" do
		before {user.save!}

		it "finds a user by correct username and password" do
			User.find_by_credentials("npartovi@gmail.com", "password123").to eq(user)
		end

		it "returns nil if no user is found" do
			User.find_by_credentials("bob@bob.com", "password").to eq(nil)
		end
	end  
end
