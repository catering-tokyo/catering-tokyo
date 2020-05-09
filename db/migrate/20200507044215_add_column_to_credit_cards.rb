class AddColumnToCreditCards < ActiveRecord::Migration[5.2]
  def change
  	add_column :credit_cards, :expiration_date, :date, nul: false
  	rename_column :credit_cards, :card_number, :card_number_digest
  end
end
