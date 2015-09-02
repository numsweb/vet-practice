class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :customer_id
      t.string :name
      t.string :type_of_pet
      t.string :breed
      t.integer :age
      t.string :weight
      t.date :date_last_visit

      t.timestamps
    end
  end
end
