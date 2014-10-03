require 'rails_helper'

describe UsersController do 
	let!(:user) { User.create!(email: "alann@gmail.com", password:"alann") }

	describe "GET #new" do 
		it "initializes a new user" do
			get :new
			expect(assigns(:user)).to be_a User
		end
	end

	describe "POST #create" do 
		context "when valid params are passed" do 
			it "creates a new user" do 
				post :create, user: FactoryGirl.attributes_for(:user)
			end
		end
	end
end