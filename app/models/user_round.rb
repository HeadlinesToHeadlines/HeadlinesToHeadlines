class UserRound < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  has_many   :discussions
  has_many   :headlines
end
