json.extract! guest, :id, :food, :first_name, :last_name, :response_id, :created_at, :updated_at
json.url guest_url(guest, format: :json)
