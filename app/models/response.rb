class Response < ApplicationRecord
  belongs_to :user

  has_many :guests, inverse_of: :response
  accepts_nested_attributes_for :guests

end
