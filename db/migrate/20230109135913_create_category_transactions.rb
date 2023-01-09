class CreateCategoryTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :category_transactions do |t|
      t.references :category, null: false, foreign_key: true
      t.references :be_transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
