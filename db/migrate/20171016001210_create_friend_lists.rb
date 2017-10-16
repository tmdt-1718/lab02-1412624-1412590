class CreateFriendLists < ActiveRecord::Migration[5.0]
  def change
    create_table :friend_lists do |t|
      t.integer :id_user
      t.integer :id_friend

      t.timestamps
    end
  end
end
