class ChangeNameOfPlayedHeadline < ActiveRecord::Migration
  def self.up
    remove_column :user_rounds, :played_headline
    add_column :user_rounds, :played_headline_id, :integer
  end

  def self.down
    remove_column :user_rounds, :played_headline_id
    add_column :user_rounds, :played_headline, :integeg
  end
end
