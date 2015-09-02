class Doctor < ActiveRecord::Base
  has_many :appointments

  validates_presence_of :name
  validates_presence_of :years_in_practice
  validates_length_of :name, :minimum => 1, :maximum => 35, :allow_blank => false
  validates_length_of :zip, :minimum => 1, :maximum => 5, :allow_blank => false
  validates_inclusion_of :years_in_practice, :in => 1..100, :message => "Must be numeric and between 1 and 100"
end
