class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author
      t.string :post_id
      t.timestamps
    end
  end
end
