class Discussion < ActiveRecord::Base
  belongs_to :user_round
  belongs_to :user
end
