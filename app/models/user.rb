class User < ActiveRecord::Base

  validates :email, presence: true, confirmation: true, uniqueness: true
  validates :password, presence: true

  has_secure_password
  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  has_friendship

  def friend_request?(user)
   user && !friends_with?(user) && user.id.in?(requested_friend_ids)
  end

  def requested_friend_ids
    requested_friends.pluck(:id)
  end

  def friend_pending?(user)
   user && !friends_with?(user) && user.id.in?(pending_friend_ids)
  end

  def pending_friend_ids
    pending_friends.pluck(:id)
  end

  # def friend_blocked?(user)
  #  user && !friends_with?(user) && user.id.in?(blocked_friend_ids)
  # end

  # def blocked_friend_ids
  #   blocked_friends.pluck(:id)
  # end

end
