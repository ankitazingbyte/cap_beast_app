class AddColumnToCustomStrapbackHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_strapback_hats, :product_detail, :string
  end
end
