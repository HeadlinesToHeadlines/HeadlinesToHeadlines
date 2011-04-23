class AddPublishedAtToHeadline < ActiveRecord::Migration
  def self.up
    add_column :headlines, :published_at, :datetime
  end

  def self.down
    remove_column :headlines, :publised_at
  end
end
