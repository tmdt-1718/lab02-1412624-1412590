class CreateFriendLists < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_lists do |t|
      t.integer :user_id
      t.integer :friend_id
      t.integer :status

      t.timestamps
    end
    add_foreign_key :friend_lists, :users, column: :user_id
    add_foreign_key :friend_lists, :users, column: :friend_id
  end
end
