class ChangeUserIdToForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :volunteers, :users, on_delete: :cascade
  end
end
