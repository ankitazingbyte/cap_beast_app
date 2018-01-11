class CreateCustomSnapbackBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_snapback_brands do |t|
      t.integer :custom_snapback_id
      t.integer :brand_id
    end
  end
end
