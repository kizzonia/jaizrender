class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :sub_title
      t.text :body
      t.string :blogimg
      t.string :slug
      t.string :icon

      t.timestamps
    end
    add_index :blogs, :slug
  end
end
