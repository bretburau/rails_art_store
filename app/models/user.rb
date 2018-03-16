class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates(:password, { :length => { :in => 6..20 } })
    
  has_secure_password
end
