class ChangeUserIdToForeignKeyBook < ActiveRecord::Migration
  def change
    add_foreign_key :books, :users, on_delete: :cascade
  end
end
