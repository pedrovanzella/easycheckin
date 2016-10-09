class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :flight_id
      t.integer :seat_id
      t.boolean :checked_in

      t.timestamps
    end
  end
end
