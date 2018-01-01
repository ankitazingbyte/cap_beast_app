class CreateCustomSnapbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_snapbacks do |t|
      t.string :image
      t.string :back_image
      t.string :right_image
      t.string :left_image
      t.string :logo
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
