class AddColumnToCustomPanelHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_panel_hats, :product_detail, :string
  end
end
