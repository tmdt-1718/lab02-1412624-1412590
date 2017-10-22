class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :status
      t.integer :sender_id
      t.integer :reveicer_id
      t.text :content
      t.datetime :sent_time
      t.datetime :seen_time

      t.timestamps
    end
  end
end
