class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

    	t.integer :user_id, null: false

    	t.string :name, null: false
    	t.string :address, null: false
    	t.string :phone_number, null: false
    	t.integer :postal_code, null: false
      t.timestamps
    end
  end
end
