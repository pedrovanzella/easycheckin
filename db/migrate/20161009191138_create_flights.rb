class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :code
      t.json :schedule
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
