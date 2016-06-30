require 'rails_helper'

RSpec.describe User, type: :model do
 
  subject(:user) {FactoryGirl.create(:user)}

  
  	describe "::new" do
  		it "initializes a new user" do
  			user = User.new
  			expect(user).to be_a(User)
  		end


      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:email) }

      end
  

  describe "#self.confirm" do
		it "finds user" do
        user.authenticate(user.password).should eq user
    end
      
	end

  describe "#search_for_matches" do
    it "creates a match when params match" do
      @paramsmatch_1 = {age: 45, interests: ["dancing"], language: "Italian"}
      match_object_1 = Match.create(@paramsmatch_1)
      @paramsuser_1 = {first_name: "Val", last_name: "Jones", email: "a@a.com", password: "123", age: 45, interests: ["dancing"], languages: ["Italian"]}
      user_1 = User.create(@paramsuser_1)
      matches = user_1.search_for_matches(match_object_1)
      expect(matches).to include(user_1)
    end

    it "doesn't create a match when params don't match" do
      # @user_2 = User.new({age: 23, interest: "singing", language: "Italian"})
      # @user_3 = User.new({age: 37, interest: "football", language: "Spanish"})
    end

  end





end
