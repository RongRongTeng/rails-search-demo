class AddIndexToCompaniesSymbol < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :companies, :symbol, algorithm: :concurrently
    add_index :companies, %i[exchange symbol], unique: true
  end
end
