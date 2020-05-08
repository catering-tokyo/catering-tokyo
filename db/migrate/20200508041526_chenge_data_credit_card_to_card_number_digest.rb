class ChengeDataCreditCardToCardNumberDigest < ActiveRecord::Migration[5.2]
  def up
    rename_column :credit_cards, :card_number_digest, :card_number
  end

  def down
  	rename_column :credit_cards, :card_number, :card_number_digest
  end
end
