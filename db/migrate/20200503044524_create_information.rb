class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|

    	t.integer :shop_id, null: false

    	t.string :title, null: false
    	t.string :information_image_id
    	t.text :text, null: false
      t.timestamps
    end
  end
end
