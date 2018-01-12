class AddBrandIdToCustomCamoHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_camo_hats, :brand_id, :integer
  end
end
