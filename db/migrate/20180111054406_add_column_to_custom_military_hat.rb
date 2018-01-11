class AddColumnToCustomMilitaryHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_military_hats, :product_detail, :string
  end
end
