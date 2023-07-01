class AddIdToCustard < ActiveRecord::Migration[7.0]
  def change
    add_column :custards, :id, :integer
  end
end
