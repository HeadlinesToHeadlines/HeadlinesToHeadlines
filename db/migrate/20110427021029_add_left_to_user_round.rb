class AddLeftToUserRound < ActiveRecord::Migration
  def self.up
    add_column :user_rounds, :left_game, :boolean
  end

  def self.down
    remove_column :user_rounds, :left_game
  end
end
