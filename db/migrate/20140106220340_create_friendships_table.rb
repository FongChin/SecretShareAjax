class CreateFriendshipsTable < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :out_friend_id, :null => false
      t.integer :in_friend_id, :null => false
    end

    add_index :friendships, [:out_friend_id, :in_friend_id], :unique => true
  end

end
