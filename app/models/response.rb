class Response < ApplicationRecord
  belongs_to :user
  serialize :guest, Array
end
