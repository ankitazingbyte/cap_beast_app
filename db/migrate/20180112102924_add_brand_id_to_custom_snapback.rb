class AddBrandIdToCustomSnapback < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_snapbacks, :brand_id, :integer
  end
end
