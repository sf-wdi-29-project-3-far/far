require 'rails_helper'

RSpec.describe Messages, type: :model do
  describe Messages do
  		describe "::new" do
  			it "initializes a new message" do
  				message = Message.new
  				expect(message).to be_a(Message)
  			end

  			it { is_expected.to validate_presence_of(:body) }
  		end
  end
end