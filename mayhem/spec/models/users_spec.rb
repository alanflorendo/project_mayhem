require 'rails_helper'

describe User do
  it {should have_many(:photos)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password)}
  it {should validate_uniqueness_of(:email)}
  it {should validate_uniqueness_of(:username)}
  it {should have_secure_password }

  let!(:user) { User.create(email:"alan@gmail.com", username: "alan", password:"alan") }
	context "email" do 
		it "should return valid email" do  
			expect(user.email).to eq("alan@gmail.com")
		end
	end

	context "invalid email" do 
		it "user is invalid without email" do 
			expect { User.new(:user, email: nil) }.to raise_error(ArgumentError)
		end
	end

end