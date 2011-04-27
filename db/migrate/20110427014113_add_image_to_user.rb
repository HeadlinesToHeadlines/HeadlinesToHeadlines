class AddImageToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :image, :text
  end

  def self.down
    remove_columns :users, :image
  end
end
