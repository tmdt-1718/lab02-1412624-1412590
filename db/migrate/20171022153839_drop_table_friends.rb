class DropTableFriends < ActiveRecord::Migration[5.1]
  def change
    drop_table :friends
  end
end
