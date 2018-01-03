class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.float :unit_price
      t.float :total_price
      t.references :order
      t.references :custom_snapback, foreign_key: true
      t.references :custom_strapback_hat, foreign_key: true
      t.references :custom_trucker_hat, foreign_key: true
      t.references :custom_panel_hat, foreign_key: true
      t.references :custom_military_hat, foreign_key: true
      t.references :custom_golf_hat, foreign_key: true
      t.references :custom_fitted_hat, foreign_key: true
      t.references :custom_camo_hat, foreign_key: true
      t.references :custom_bucket_hat, foreign_key: true
      t.references :custom_beanie, foreign_key: true
      t.references :custom_athletic_hat, foreign_key: true

      t.timestamps
    end
  end
end
