class Response < ApplicationRecord
  belongs_to :user

  # must include inverse_of
  has_many :guests, inverse_of: :response
  accepts_nested_attributes_for :guests

end
