class CreateCustards < ActiveRecord::Migration[7.0]
  def change
    create_table :custards do |t|
      t.string :name
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
