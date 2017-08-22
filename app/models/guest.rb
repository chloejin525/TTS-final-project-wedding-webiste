class Guest < ApplicationRecord
  # must include inverse_of
  belongs_to :response, inverse_of: :guests
end
