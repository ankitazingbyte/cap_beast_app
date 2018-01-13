class AddUserIdToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :user_id, :integer
  end
end
