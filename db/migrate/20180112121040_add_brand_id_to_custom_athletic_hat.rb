class AddBrandIdToCustomAthleticHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_athletic_hats, :brand_id, :integer
  end
end
