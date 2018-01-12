class AddBrandIdToCustomBeanie < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_beanies, :brand_id, :integer
  end
end
