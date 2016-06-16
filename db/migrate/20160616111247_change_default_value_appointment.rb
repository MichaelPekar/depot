class ChangeDefaultValueAppointment < ActiveRecord::Migration
  def change
    Appointment.all.each do |app|
      app.update_attributes(appointment_date: Date.today.advance(days: rand(100...200)))
    end
  end
end
