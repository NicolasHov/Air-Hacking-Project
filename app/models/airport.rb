class Airport < ApplicationRecord
  has_many :flights, foreign_key: "departure_airport_id"
  has_many :flights, foreign_key: "arrival_airport_id"
end
