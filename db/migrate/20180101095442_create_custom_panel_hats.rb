class CreateCustomPanelHats < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_panel_hats do |t|
      t.string :title
      t.string :logo
      t.string :image
      t.string :back_image
      t.string :left_image
      t.string :right_image
      t.decimal :price

      t.timestamps
    end
  end
end
