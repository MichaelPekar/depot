class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :pacient, index: true
      t.datetime :appointment_date

      t.timestamps null: false
    end
  end
end
