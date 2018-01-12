class AddBrandIdToCustomPanelHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_panel_hats, :brand_id, :integer
  end
end
