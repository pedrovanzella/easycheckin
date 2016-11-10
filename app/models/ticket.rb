class Ticket < ApplicationRecord
    include PublicActivity::Model
    tracked
    
  belongs_to :user
  belongs_to :flight
  belongs_to :seat
end
