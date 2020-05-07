class ChangeDataCreditCardToCardNumberDigest < ActiveRecord::Migration[5.2]
  def up
    change_column :credit_cards, :card_number_digest, :string, null: false
  end

  def down
    change_column :credit_cards, :card_number_digest, :integer, null: false
  end
end
