class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  has_many :seats
  accepts_nested_attributes_for :seats, allow_destroy: true
end
