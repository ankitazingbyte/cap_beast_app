class OrderItem < ApplicationRecord
  belongs_to :order ,optional: true
  belongs_to :custom_snapback, optional: true
  belongs_to :custom_strapback_hat, optional: true
  belongs_to :custom_trucker_hat, optional: true
  belongs_to :custom_panel_hat, optional: true
  belongs_to :custom_military_hat, optional: true
  belongs_to :custom_golf_hat, optional: true
  belongs_to :custom_fitted_hat, optional: true
  belongs_to :custom_camo_hat, optional: true
  belongs_to :custom_bucket_hat, optional: true
  belongs_to :custom_beanie, optional: true
  belongs_to :custom_athletic_hat, optional: true
  

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :order_present
  validate :custom_snapback_present
  validate :custom_strapback_hat_present
  validate :custom_trucker_hat_present
  validate :custom_panel_hat_present
  validate :custom_military_hat_present
  validate :custom_golf_hat_present
  validate :custom_fitted_hat_present
  validate :custom_camo_hat_present
  validate :custom_bucket_hat_present
  validate :custom_beanie_present
  validate :custom_athletic_hat_present

  before_save :finalize

 def self.library
 end
  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_snapback.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_snapback_present
      if custom_snapback.nil?
        errors.add(:custom_snapback, "is not valid or is not active.")
      end
    end

    def order_present
      if order.nil?
        errors.add(:order, "is not a valid order.")
      end
    end

    def finalize
      self[:unit_price] = unit_price
      self[:total_price] = quantity * self[:unit_price]
    end

end