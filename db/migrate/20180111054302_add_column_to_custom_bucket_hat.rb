class AddColumnToCustomBucketHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_bucket_hats, :product_detail, :string
  end
end
