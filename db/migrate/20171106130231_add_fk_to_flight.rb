class AddFkToFlight < ActiveRecord::Migration[5.1]
  def change
    add_reference :flights, :arrival_airport, foreign_key: true
  end
end
