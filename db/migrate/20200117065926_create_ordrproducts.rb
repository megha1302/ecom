class CreateOrdrproducts < ActiveRecord::Migration[6.0]
  def change
    create_table :ordrproducts do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :ordr, null: false, foreign_key: true

      t.timestamps
    end
  end
end
