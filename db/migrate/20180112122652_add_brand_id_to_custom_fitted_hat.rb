class AddBrandIdToCustomFittedHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_fitted_hats, :brand_id, :integer
  end
end
