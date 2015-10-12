class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :patient_id
      t.string :location

      t.timestamps null: false
    end
  end
end
