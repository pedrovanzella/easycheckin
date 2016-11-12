class Flight < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  has_many :seats
  accepts_nested_attributes_for :seats, allow_destroy: true

  validates :code, uniqueness: true
end
