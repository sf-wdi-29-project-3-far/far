class VideosController < ApplicationController

  def create
  	opentok = OpenTok::OpenTok.new '45613842', 'be0aa1632ada533cbc168e5ca79a32c28ad5c3f2'
 	@session = opentok.create_session media_mode: :routed
  	@session_id = @session.session_id
  	@token = opentok.generate_token @session.session_id
  	render :videoconversation
  
  end


  # def show
  #   @session = Session.find(params[:id])
  #   unless params[:id].blank?
  #     s = Session.find(params[:id])
  #     token = OPENTOK.generate_token s.session_id
  #     @token = Token.create(session_id: s.id, token: token, active: true)
  #     @token.save
  #   end
  # end

end
