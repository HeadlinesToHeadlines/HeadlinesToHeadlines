require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do  
  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('./tmp'), :name => 'yahoo', :identifier => 'yahoo.com'
  provider :twitter,  ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']  
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end  
