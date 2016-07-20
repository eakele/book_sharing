class RemoveColumnFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :volunteer_id
  end
end
