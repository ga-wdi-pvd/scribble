class TryingToFixIssue < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :post_id, :string
  end
end
