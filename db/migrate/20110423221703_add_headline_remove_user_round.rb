class AddHeadlineRemoveUserRound < ActiveRecord::Migration
  def self.up
    add_column :headlines, :user_round_id, :integer
    remove_column :user_rounds, :headline_id
  end

  def self.down
    add_column :user_rounds, :headline_id
    remove_column :headlines, :user_round_id, :integer
  end
end
