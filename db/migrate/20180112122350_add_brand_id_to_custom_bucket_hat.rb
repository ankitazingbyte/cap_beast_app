class AddBrandIdToCustomBucketHat < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_bucket_hats, :brand_id, :integer
  end
end
