class CreateOrdrs < ActiveRecord::Migration[6.0]
  def change
    create_table :ordrs do |t|
      t.integer :orderno
      t.string :trackno
      t.string :paytype
      t.decimal :total
      t.datetime :orderdate
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
