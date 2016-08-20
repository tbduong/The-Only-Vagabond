class User < ApplicationRecord
  has_many :comments
  has_many :cities, through: :comments
  has_secure_password
  validates :email, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
