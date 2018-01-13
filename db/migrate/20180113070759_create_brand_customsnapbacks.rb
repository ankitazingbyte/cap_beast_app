class CreateBrandCustomsnapbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :brand_customsnapbacks do |t|
      t.integer :brand_id
      t.integer :custom_snapback_id

      t.timestamps
    end
  end
end
