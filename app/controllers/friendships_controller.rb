class FriendshipsController < ApplicationController
  before_action :set_friend

  def show
    @user.friends
  end

  def add
    current_user.friend_request(@friend)
    current_user.save
    redirect_to current_user
  end

  def accept
    current_user.accept_request(@friend)
    redirect_to current_user
  end

  def decline
    current_user.decline_request(@friend)
    redirect_to current_user
  end

  def remove
    current_user.remove_friend(@friend)
    redirect_to current_user
  end

  private

  def set_friend
    user_id = params[:id]
    @friend = User.find(user_id)
  end
  
end
