class UserRound < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  belongs_to :headline
end
