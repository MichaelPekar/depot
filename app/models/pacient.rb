class Pacient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :doctors
end
