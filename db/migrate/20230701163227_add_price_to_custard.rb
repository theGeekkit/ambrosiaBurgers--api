class AddPriceToCustard < ActiveRecord::Migration[7.0]
  def change
    add_column :custards, :price, :integer
  end
end
