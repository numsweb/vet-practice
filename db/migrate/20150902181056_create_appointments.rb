class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.integer :pet_id
      t.integer :customer_id
      t.integer :doctor_id
      t.boolean :requires_remainder
      t.string :reason_for_visit
      
      t.timestamps
    end
  end
end
