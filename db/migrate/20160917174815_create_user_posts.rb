class CreateUserPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_posts do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index :user_posts, :user_id
    add_index :user_posts, :post_id
  end
end
