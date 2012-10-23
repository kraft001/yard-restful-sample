class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :author
      t.string :title
      t.string :genre
      t.integer :year

      t.timestamps
    end
  end
end
