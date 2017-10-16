class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :id_receiver
      t.text :content
      t.integer :id_sender
      t.date :time_send
      t.date :time_read
      t.boolean :status

      t.timestamps
    end
  end
end
