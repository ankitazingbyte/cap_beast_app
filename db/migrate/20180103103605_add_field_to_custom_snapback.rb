class AddFieldToCustomSnapback < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_snapbacks, :text, :text
  end
end
