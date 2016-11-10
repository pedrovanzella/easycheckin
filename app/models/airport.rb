class Airport < ApplicationRecord
    include PublicActivity::Model
    tracked
end
