class AddIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :id, :integer
  end
end
