class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.string :title
      t.text :caption
      t.date :date
      t.integer :comment_id

      t.timestamps
    end
  end
end
