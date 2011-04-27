class ChangeTypeOfPlayedHeadline < ActiveRecord::Migration
  def self.up
    remove_column :user_rounds, :played_headline_id
    add_column :user_rounds, :played_headline, :text
  end

  def self.down
    add_column :user_rounds, :played_headline_id, :integer
    remove_column :user_rounds, :played_headline
  end
end
