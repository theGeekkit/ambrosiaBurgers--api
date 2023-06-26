class AddPriceToAdjusters < ActiveRecord::Migration[7.0]
  def change
    add_column :adjusters, :price, :integer
  end
end
