require 'rails_helper'

RSpec.describe Message, type: :model do
  describe Message do
  		describe "::new" do
  			it "initializes a new message" do
  				message = Message.new
  				expect(message).to be_a(Message)
  			end

  			it { is_expected.to validate_presence_of(:body) }
  		end
  end
end