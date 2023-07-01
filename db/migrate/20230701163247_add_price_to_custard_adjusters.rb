class AddPriceToCustardAdjusters < ActiveRecord::Migration[7.0]
  def change
    add_column :custard_adjusters, :price, :integer
  end
end
