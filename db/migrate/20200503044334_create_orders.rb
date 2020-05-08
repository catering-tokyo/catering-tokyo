class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

    	t.integer :user_id, null: false
    	t.integer :course_id, null: false

      t.string :user_name, null: false
      t.string :shop_name, null: false
      t.string :course_name, null: false
      t.string :delivery_address, null: false
      t.string :payment, null: false
      t.string :option, null: false
      t.string :people_number, null: false

      t.integer :price, null: false
      t.date :reserve_date, null: false
      t.time :reserve_time, null: false
      t.integer :order_status, default: 0, null: false
      t.timestamps
    end
  end
end
