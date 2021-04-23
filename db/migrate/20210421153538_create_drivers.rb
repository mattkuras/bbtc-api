class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :password_digest
      t.string :email
      t.string :phone_number
      t.boolean :is_working, :default => false 
      t.boolean :is_occupied, :default => false 
      t.string :license_number
      t.string :expiration_date

      t.timestamps
    end
  end
end
