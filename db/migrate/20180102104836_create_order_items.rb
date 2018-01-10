class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.float :unit_price
      t.float :total_price
      t.references :order
      t.references :custom_snapback
      t.references :custom_strapback_hat
      t.references :custom_trucker_hat
      t.references :custom_panel_hat
      t.references :custom_military_hat
      t.references :custom_golf_hat
      t.references :custom_fitted_hat
      t.references :custom_camo_hat
      t.references :custom_bucket_hat
      t.references :custom_beanie
      t.references :custom_athletic_hat

      t.timestamps
    end
  end
end
