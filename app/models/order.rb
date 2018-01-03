class Order < ApplicationRecord
  belongs_to :order_status, optional: true
  has_many :order_items
 
  has_many :custom_snapbacks
  has_many :custom_strapback_hats
  has_many :custom_trucker_hats
  has_many :custom_panel_hats
  has_many :custom_military_hats
  has_many :custom_golf_hats
  has_many :custom_fitted_hats
  has_many :custom_camo_hats
  has_many :custom_bucket_hats
  has_many :custom_beanies
  has_many :custom_athletic_hats

 before_create :set_order_status
  before_save :update_subtotal
  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:sub_total] = sub_total
  end
end
