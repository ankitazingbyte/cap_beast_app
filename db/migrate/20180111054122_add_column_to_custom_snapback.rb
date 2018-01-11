class AddColumnToCustomSnapback < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_snapbacks, :product_detail, :string
  end
end
