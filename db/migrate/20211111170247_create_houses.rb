class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :building_no
      t.integer :no_of_rooms
      t.integer :no_of_tenants
      t.string :location
      t.float :monthly_rent
      t.integer :space_available
      t.boolean :balcony_availabe
      t.boolean :parking_space

      t.timestamps
    end
  end
end
