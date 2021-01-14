class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :title
      t.string :sub_title
      t.string :body
      t.string :fimg
      t.string :slug
      t.string :icon

      t.timestamps
    end
    add_index :features, :slug
  end
end
