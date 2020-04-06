class RemoveReviewIdFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :review_id, :integer
  end
end
