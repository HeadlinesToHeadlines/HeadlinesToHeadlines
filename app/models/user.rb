require 'nokogiri'
require 'open-uri'

class User < ActiveRecord::Base
  has_many :user_rounds
  has_many :discussions

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
    end
  end

  def image_url
    return self.image unless self.image.nil?

    case self.provider
    when 'twitter'
      obj = Nokogiri::XML(open("http://api.twitter.com/1/users/show.xml?user_id=#{self.uid}"))
      url = obj.css('profile_image_url').text
      if url
        update_attributes(:image => url)
        return url
      end
    end
  end
end
