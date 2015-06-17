class User < ActiveRecord::Base
  has_many :posts

  def self.authorize_with(auth)
    where(provider: auth["provider"], uid: auth["uid"]).first_or_create.tap do |u|
      u.name         = auth.info.name
      u.email        = auth.info.email
      u.nickname     = auth.info.nickname
      u.access_token = auth.credentials.token
      u.save!
    end
  end
end
