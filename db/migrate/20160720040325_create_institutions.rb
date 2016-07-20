class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.references :cart, index: true, foreign_key: true

      t.string :institution_name
      t.string :institution_level
      t.string :institution_address
      t.string :status

      t.timestamps null: false
    end
  end
end
