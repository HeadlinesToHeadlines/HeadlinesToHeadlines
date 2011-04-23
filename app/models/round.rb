class Round < ActiveRecord::Base
  has_many :plays
  has_many :rss_feeds
  has_many :users
end
