class ChangeVolunteerIdToForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :carts, :volunteers, on_delete: :cascade
  end
end
