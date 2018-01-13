class CreateJoinTableBrandCustomSnapback < ActiveRecord::Migration[5.1]
  def change
    create_join_table :brands, :custom_snapbacks do |t|
      # t.index [:brand_id, :custom_snapback_id]
      # t.index [:custom_snapback_id, :brand_id]
    end
  end
end
