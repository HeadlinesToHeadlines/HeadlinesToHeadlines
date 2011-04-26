class AddRoundFinished < ActiveRecord::Migration
  def self.up
    add_column :rounds, :finished, :boolean
  end

  def self.down
    remove_column :rounds, :finished
  end
end
