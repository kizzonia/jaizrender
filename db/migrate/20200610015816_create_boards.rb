class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :name
      t.text :body
      t.string :boardimg
      t.string :slug
      t.string :icon

      t.timestamps
    end
    add_index :boards, :slug
  end
end
