class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.string :name
      t.string :icon
      t.text :body

      t.timestamps
    end
  end
end
