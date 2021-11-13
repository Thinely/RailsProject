json.extract! house, :id, :building_no, :no_of_rooms, :no_of_tenants, :location, :monthly_rent, :space_available, :balcony_availabe, :parking_space, :created_at, :updated_at
json.url house_url(house, format: :json)
