class HomeController < ApplicationController

  def index

  end
  def custom_snapbacks

  end
  def custom_fitted_hats

  end
  def custom_dad_hats

  end
  def custom_camo_hats

  end
  def login_form

  end
  def forget_psw
    
  end
  def signup_form
    
  end
  def checkout
    
  end
  def checkout_shipping
    
  end
  def checkout_payment
  
  end
  def contact
    
  end
  def contact_us_mailer
    @email = params[:test][:email]
    @first_name = params[:test][:first_name]
    @last_name = params[:test][:last_name]
    @street_address = params[:test][:street_address]
    @country = params[:test][:country]
    @state = params[:test][:state]
    @city = params[:test][:city]
    @postal_code = params[:test][:postal_code]
    @phone = params[:test][:phone]
    @details = params[:test][:details]
    @user = User.create(first_name: @first_name, last_name: @last_name, street_address: @street_address, country: @country, state: @state, city: @city, postal_code: @postal_code, phone: @phone, email: @email, password: "12345678")
    UserMailer.welcome_email(@user).deliver_now
    redirect_to root_path
  end 
end
