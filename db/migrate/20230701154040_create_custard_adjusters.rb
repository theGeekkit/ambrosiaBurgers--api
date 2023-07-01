class CreateCustardAdjusters < ActiveRecord::Migration[7.0]
  def change
    create_table :custard_adjusters do |t|
      t.string :name
      t.references :custard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
