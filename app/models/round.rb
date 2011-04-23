class Round < ActiveRecord::Base
  # has_many :plays
  # has_many :rss_feeds
  has_many :user_rounds

  has_one :winner, :class_name => "UserRound"
  has_one :judge, :class_name => "User"
end
