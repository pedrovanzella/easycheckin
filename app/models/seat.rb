class Seat < ApplicationRecord
    include PublicActivity::Model
    tracked
    
  belongs_to :flight
end
