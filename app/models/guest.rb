class Guest < ApplicationRecord
  belongs_to :response, inverse_of: :guests
end
