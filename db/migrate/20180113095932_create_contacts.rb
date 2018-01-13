class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :country
      t.string :state
      t.string :city
      t.string :postal_code
      t.integer :phone
      t.string :logo
      t.string :details

      t.timestamps
    end
  end
end
