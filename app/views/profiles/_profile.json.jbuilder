json.extract! profile, :id, :user_id, :first_name, :last_name, :display_name, :street, :city, :state, :postcode, :country, :home_phone, :work_phone, :mobiile_phone, :facebook, :instagram, :twitter, :created_at, :updated_at
json.url profile_url(profile, format: :json)
