class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :body
      t.string :category1
      t.string :category2

      t.timestamps
    end
  end
end
