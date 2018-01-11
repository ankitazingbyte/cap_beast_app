class AddColumnToCustomAthleticHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_athletic_hats, :product_detail, :string
  end
end
