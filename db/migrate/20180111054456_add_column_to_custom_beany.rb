class AddColumnToCustomBeany < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_beanies, :product_detail, :string
  end
end
