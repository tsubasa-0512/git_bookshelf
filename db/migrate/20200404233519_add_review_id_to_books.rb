class AddReviewIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :review_id, :integer
  end
end
