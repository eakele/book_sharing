class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :volunteer, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
