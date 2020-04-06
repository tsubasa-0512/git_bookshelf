class CreateReadingtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :readingtimes do |t|

      t.timestamps
    end
  end
end
