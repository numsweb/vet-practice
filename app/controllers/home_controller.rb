class HomeController < ApplicationController
  def index
  end
  
  def show_next_appointment
     @pets = Pet.all.collect{|p| [p.name, p.id]}
     if params[:pet]
       pet = Pet.find(params[:pet][:id])
       @appointment = pet.appointments.most_recent[0]
     end
  end
end
