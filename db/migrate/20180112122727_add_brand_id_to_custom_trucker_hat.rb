class AddBrandIdToCustomTruckerHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_trucker_hats, :brand_id, :integer
  end
end
