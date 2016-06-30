require 'rails_helper'

RSpec.describe Match, type: :model do

	describe Match do
  		describe "::new" do
  			it "initializes a new match" do
  				match = Match.new
  				expect(match).to be_a(Match)
  			end

  			it 'should have a language' do
  				match = Match.new(language: 'language')
  				match.save
  				match.language.should_not be_nil
			end
		end
	end
end
