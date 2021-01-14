class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :title
      t.text :body
      t.string :slug

      t.timestamps
    end
    add_index :teams, :slug
  end
end
