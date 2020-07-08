class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.integer :pet_id
      t.string :name
      t.integer :sex
      t.text :species
      t.integer :post_id

      t.timestamps
    end
  end
end
