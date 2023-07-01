class AddIdToDrinks < ActiveRecord::Migration[7.0]
  def change
    add_column :drinks, :id, :integer
  end
end
