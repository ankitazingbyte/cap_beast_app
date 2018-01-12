class AddBrandIdToCustomMilitaryHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_military_hats, :brand_id, :integer
  end
end
