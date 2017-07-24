json.extract! response, :id, :attendance, :number, :entree, :message, :user_id, :guest, :created_at, :updated_at
json.url response_url(response, format: :json)
