class ChangeDataTypeOfVolunteer < ActiveRecord::Migration
  def change
    change_column :volunteers, :departure_date, :string
    change_column :volunteers, :arrival_date, :string
  end
end
