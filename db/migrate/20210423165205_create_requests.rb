class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :location_address
      t.string :destination_address
      t.integer :passenger_id, :null => true

      t.timestamps
    end
  end
end
