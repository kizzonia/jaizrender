class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.string :sub_title
      t.string :icon
      t.string :sectionimg

      t.timestamps
    end
  end
end
