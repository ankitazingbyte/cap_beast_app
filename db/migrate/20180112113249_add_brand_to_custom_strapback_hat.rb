class AddBrandToCustomStrapbackHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_strapback_hats, :brand_id, :integer
  end
end
