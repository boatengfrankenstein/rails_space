class AddUserTimestamps < ActiveRecord::Migration
  def self.up
   add_column :users, :created_at, :timestamp
   add_column :users, :updated_at, :timestamp

  end

  def self.down
  end
end
