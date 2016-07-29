class RemoveProfileIdFromBook < ActiveRecord::Migration
  def change
     remove_column :books, :profile_id
  end
end
