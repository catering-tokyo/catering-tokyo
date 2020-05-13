class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|

    	t.integer :user_id, null: false
    	t.integer :shop_id, null: false

    	t.string :title, null: false
    	t.text :body, null: false
      t.text :reply
    	t.boolean :checked, default: false, null: false
      t.timestamps
    end
  end
end
