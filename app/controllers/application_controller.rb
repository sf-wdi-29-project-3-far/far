class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    if !current_user
      redirect_to sign_in_path, notice: "You must be signed in to do that!"
    end
  end
  
end
