class RemoveColumnPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :post, :string
  end
end
