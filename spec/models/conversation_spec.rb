require 'rails_helper'

RSpec.describe Conversation, type: :model do
  describe Conversation do
  		describe "::new" do
  			it "initializes a new message" do
  				conversation = Conversation.new
  				expect(message).to be_a(Conversation)
  			end
  		end
end