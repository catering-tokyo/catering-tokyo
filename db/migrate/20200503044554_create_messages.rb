class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|

    	t.integer :user_id
    	t.integer :shop_id
    	t.integer :room_id, null: false

    	t.string :message, null: false
      t.timestamps
    end
  end
end
