class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text
      t.integer :user_id
      t.integer :channel_id

      t.timestamps
    end
  end
end
