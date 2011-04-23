class AddPlayedHeadlineToUserRound < ActiveRecord::Migration
  def self.up
    add_column :user_rounds, :played_headline, :integer
  end

  def self.down
    remove_column :user_rounds, :played_headline
  end
end
