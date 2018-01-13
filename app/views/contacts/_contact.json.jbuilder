json.extract! contact, :id, :first_name, :last_name, :email, :street_address, :country, :state, :city, :postal_code, :phone, :logo, :details, :created_at, :updated_at
json.url contact_url(contact, format: :json)
