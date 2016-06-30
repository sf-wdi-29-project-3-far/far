require 'rails_helper'

RSpec.describe User, type: :model do
 
  subject(:user) {FactoryGirl.create(:user)}

  describe User do
  	describe "::new" do
  		it "initializes a new user" do
  			user = User.new
  			expect(user).to be_a(User)
  		end


      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }

      end
  end

  describe "#self.confirm" do
		it "finds user" do
        user.authenticate(user.password).should eq user
    end
      
	end

  describe "#search_for_matches" do
    it "creates a match when params match" do
      @params_1 = {age: 45, interest: "dancing", language: "Italian"}
      match_object_1 = Match.create(@params_1)
      user_1 = User.new(@params_1)
      matches = @user_1.search_for_matches(match_object_1)
      expect @matches :to include (user_1)
    end

    it "doesn't create a match when params don't match"
      # @user_2 = User.new({age: 23, interest: "singing", language: "Italian"})
      # @user_3 = User.new({age: 37, interest: "football", language: "Spanish"})
    end

  end





end
