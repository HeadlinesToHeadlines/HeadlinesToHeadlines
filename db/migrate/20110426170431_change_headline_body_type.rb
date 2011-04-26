class ChangeHeadlineBodyType < ActiveRecord::Migration
  def self.up
    remove_column :headlines, :title
    remove_column :headlines, :guid
    remove_column :headlines, :url
    add_column :headlines, :title, :text
    add_column :headlines, :guid, :text
    add_column :headlines, :url, :text
  end

  def self.down
    remove_column :headlines, :title
    remove_column :headlines, :guid
    remove_column :headlines, :url
    add_column :headlines, :title, :string
    add_column :headlines, :guid, :string
    add_column :headlines, :url, :string
  end
end
