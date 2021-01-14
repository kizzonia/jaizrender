class CreateWelcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :welcomes do |t|
      t.string :address
      t.string :logoimg
      t.string :footer
      t.string :phone
      t.string :title
      t.string :desc
      t.string :section
      t.string :twitter
      t.string :ig
      t.string :ln
      t.string :telegram

      t.timestamps
    end
  end
end
