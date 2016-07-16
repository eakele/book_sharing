class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.string :title
      t.string :author
      t.string :standard
      t.string :subject
      t.string :language
      t.string :message
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
