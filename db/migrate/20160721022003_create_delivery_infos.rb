class CreateDeliveryInfos < ActiveRecord::Migration
  def change
    create_table :delivery_infos do |t|
      t.references :cart, index: true, foreign_key: true

      t.string :delivered_to
      
      t.timestamps null: false
    end
  end
end
