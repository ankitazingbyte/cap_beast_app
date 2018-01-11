class AddColumnToCustomCamoHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_camo_hats, :product_detail, :string
  end
end
