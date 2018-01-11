class AddColumnToCustomFittedHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_fitted_hats, :product_detail, :string
  end
end
