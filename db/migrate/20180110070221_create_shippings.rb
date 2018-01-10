class CreateShippings < ActiveRecord::Migration[5.1]
  def change
    create_table :shippings do |t|
      t.string :standard
      t.string :express

      t.timestamps
    end
  end
end
