class AddColumnToCustomTruckerHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_trucker_hats, :product_detail, :string
  end
end
