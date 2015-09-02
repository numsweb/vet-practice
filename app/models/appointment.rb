class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :customer
  belongs_to :pet
  
  validates_presence_of :pet_id
  validates_presence_of :customer_id
  validates_presence_of :reason_for_visit
  
  
end
