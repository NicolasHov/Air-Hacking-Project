class AddOtherFkToFlight < ActiveRecord::Migration[5.1]
  def change
    add_reference :flights, :departure_airport, foreign_key: true
  end
end
