class AddBrandIdToCustomGolfHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_golf_hats, :brand_id, :integer
  end
end
