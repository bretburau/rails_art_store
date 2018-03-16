class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, { :length => { :in => 6..20 } }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  has_secure_password
end
