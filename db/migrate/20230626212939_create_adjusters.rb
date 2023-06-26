class CreateAdjusters < ActiveRecord::Migration[7.0]
  def change
    create_table :adjusters do |t|
      t.string :name
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
