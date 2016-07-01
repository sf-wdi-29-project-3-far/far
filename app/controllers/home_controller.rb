# require 'opentok'

# opentok = OpenTok::OpenTok.new '45613842', 'be0aa1632ada533cbc168e5ca79a32c28ad5c3f2'

class HomeController < ApplicationController
  def index
  	# @session = opentok.create_session
   #  @token = session.generate_token
    render :home
  end
end
