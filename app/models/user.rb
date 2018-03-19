class User < ApplicationRecord
  attr_accessor :skip_email_validation
  validates :email, presence: true, uniqueness: true, unless: :skip_email_validation
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_secure_password

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.password = SecureRandom.hex
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      if auth.provider = "facebook"
        both_names = auth.info.name.split
        user.first_name = both_names.first
        user.last_name = both_names.last
      end
      user.skip_email_validation = true
      user.save!
    end
  end
end
