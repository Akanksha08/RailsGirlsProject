class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :post_id

      t.timestamps
    end
    add_foreign_key :comments, :posts

  end
end
