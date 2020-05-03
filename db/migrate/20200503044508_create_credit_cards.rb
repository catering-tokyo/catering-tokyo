class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|

    	t.integer :user_id, null: false

    	t.string :card_holder, null: false
    	t.integer :card_number, null: false
      t.timestamps
    end
  end
end
