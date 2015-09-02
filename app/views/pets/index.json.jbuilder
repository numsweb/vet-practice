json.array!(@pets) do |pet|
  json.extract! pet, :id, :customer_id, :name, :type_of_pet, :breed, :age, :weight, :date_last_visit
  json.url pet_url(pet, format: :json)
end
