class AddColumnToCustomGolfHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_golf_hats, :product_detail, :string
  end
end
