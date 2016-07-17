class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :books, :profile_id, :user_id
  end
end
