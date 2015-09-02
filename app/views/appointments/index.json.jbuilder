json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet, :customer_id, :doctor_id,  :pet_id,  :requires_remainder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
