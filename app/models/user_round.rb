class UserRound < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  has_many   :headlines
  has_one    :played_headline, :class_name => 'Headline'
end
