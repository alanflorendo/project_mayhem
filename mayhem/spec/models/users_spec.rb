require 'rails_helper'

describe User do
  it {should have_many(:photos)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password)}

  let!(:user) { User.create(email:"alan@gmail.com", username: "alan", password:"alan") }
	context "email" do 
		it "should return valid email" do  
			expect(user.email).to eq("alan@gmail.com")
		end
	end

end