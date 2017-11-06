class Flight < ApplicationRecord
  belongs_to :airport, foreign_key: "departure_airport_id"
  belongs_to :airport, foreign_key: "arrival_airport_id"
end
