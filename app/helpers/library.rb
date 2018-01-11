module LibraryHelper
	# Snapback

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


# STRAPBACK_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_strapback_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_strapback_hat_present
      if custom_strapback_hat.nil?
        errors.add(:custom_strapback_hat, "is not valid or is not active.")
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


# FITTED_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_fitted_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_fitted_hat_present
      if custom_fitted_hat.nil?
        errors.add(:custom_fitted_hat, "is not valid or is not active.")
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


# GOLF_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_golf_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_golf_hat_present
      if custom_golf_hat.nil?
        errors.add(:custom_golf_hat, "is not valid or is not active.")
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


# ATHLETIC_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_athletic_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_athletic_hat_present
      if custom_athletic_hat.nil?
        errors.add(:custom_athletic_hat, "is not valid or is not active.")
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


# BEANIE

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_beanie.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_beanie_present
      if custom_beanie.nil?
        errors.add(:custom_beanie, "is not valid or is not active.")
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


# BUCKET_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_bucket_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_bucket_hat_present
      if custom_bucket_hat.nil?
        errors.add(:custom_bucket_hat, "is not valid or is not active.")
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

# CAMO_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_camo_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_camo_hat_present
      if custom_camo_hat.nil?
        errors.add(:custom_camo_hat, "is not valid or is not active.")
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


# MILITARY_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_military_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_military_hat_present
      if custom_military_hat.nil?
        errors.add(:custom_military_hat, "is not valid or is not active.")
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


# PANEL_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_panel_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_panel_hat_present
      if custom_panel_hat.nil?
        errors.add(:custom_panel_hat, "is not valid or is not active.")
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


# TRUCKER_HAT

  def unit_price
      if persisted?
        self[:unit_price]
      else
        custom_trucker_hat.price
      end
    end

    def total_price
      unit_price * quantity
    end

  private
    def custom_trucker_hat_present
      if custom_trucker_hat.nil?
        errors.add(:custom_trucker_hat, "is not valid or is not active.")
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