class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      
      t.integer :sender_id
      t.integer :receiver_id
      t.text :content
      t.datetime :seen_time
      t.integer :status      
      t.timestamps
    end
    add_foreign_key :messages, :users, column: :sender_id
    add_foreign_key :messages, :users, column: :receiver_id
  end
  
end
