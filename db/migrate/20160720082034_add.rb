class Add < ActiveRecord::Migration
  def change
    add_column :carts, :volunteer_id, :integer
  end
end
