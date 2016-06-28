class User < ActiveRecord::Base

  validates :email, :password, presence: true, confirmation: true
  validates :email, uniqueness: true

  has_secure_password
  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  has_friendship

end
