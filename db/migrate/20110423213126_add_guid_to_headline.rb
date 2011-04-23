class AddGuidToHeadline < ActiveRecord::Migration
  def self.up
    add_column :headlines, :guid, :string
  end

  def self.down
    remove_column :headlines, :guid
  end
end
