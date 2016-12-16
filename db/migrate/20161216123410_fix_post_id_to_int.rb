class FixPostIdToInt < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :post_id, :string
    add_column :comments, :post_id, :integer
  end
end
