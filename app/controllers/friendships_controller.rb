class FriendshipsController < ApplicationController

  def show
    @user = current_user
    @user.friends
  end

  def request
    binding.pry
    @user = current_user
    @friend = User.find(params[:id])
    @user.friend_request(@friend)
    # puts "request pending"
  end

  def accept
    @user = current_user
    @friend = User.find(params[:id])
    @user.accept_request(@friend)
  end

  def decline
    @user = current_user
    @friend = User.find(params[:id])
    @user.decline_request(@friend)
  end

  def remove
    @user = current_user
    @friend = User.find(params[:id])
    @user.remove_friend(@friend)
  end

  def block
    @user = current_user
    @friend = User.find(params[:id])
    @user.block_friend(@friend)
  end

  def unblock
    @user = current_user
    @friend = User.find(params[:id])
    @user.unblock_friend(@friend)
  end

end
