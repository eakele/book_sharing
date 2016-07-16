class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :profiles, :type, :register_as
  end
end
