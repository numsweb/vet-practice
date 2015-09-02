class Doctor < ActiveRecord::Base
  has_many :appointments

  validates_presence_of :name
  validates_presence_of :years_in_practice
  validates_length_of :name, :minimum => 1, :maximum => 35, :allow_blank => false

end
