class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :sub_title
      t.string :body
      t.string :abtimg
      t.string :slug
      t.string :icon

      t.timestamps
    end
    add_index :abouts, :slug
  end
end
