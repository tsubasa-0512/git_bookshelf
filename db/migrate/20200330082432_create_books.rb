class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.integer :genre_id
      t.integer :review_id
      t.timestamps
    end
  end
end
