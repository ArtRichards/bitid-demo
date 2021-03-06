class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  attr_accessible :btc, :name
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates :btc, presence: true, uniqueness: true
end