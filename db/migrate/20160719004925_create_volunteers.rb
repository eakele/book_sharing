class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|

            t.date :departure_date
            t.date :arrival_date
            t.string :destination_country
            t.string :destination_city
            t.string :destination_province
            t.string :message
            
      t.timestamps null: false
    end
  end
end
