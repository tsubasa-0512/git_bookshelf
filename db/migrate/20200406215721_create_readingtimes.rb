class CreateReadingtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :readingtimes do |t|
      t.integer :book_id
      t.integer :genre_id
      t.timestamps
    end
  end
end
