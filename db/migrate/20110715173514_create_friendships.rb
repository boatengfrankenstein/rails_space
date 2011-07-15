class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
#      t.integer :user_id
#      t.integer :friend_id
#      t.string :status
#      t.datetime :created_at
#      t.datetime :accepted_at
       t.column :user_id, :integer
       t.column :friend_id, :integer
       t.column :status, :text
       t.column :created_at, :datetime
       t.column :accepted_at, :datetime

#      t.timestamps
    end
  end

  def self.down
    drop_table :friendships
  end
end
