class ChangeColumnNull < ActiveRecord::Migration
  def change
    change_column_null :books, :title, false
    change_column_null :books, :author, false
    change_column_null :books, :standard, false
    change_column_null :books, :subject, false
    change_column_null :books, :language, false
  end
end
