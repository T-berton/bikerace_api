class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.belongs_to :rider
      t.decimal :latitude, precision: 10, scale: 2 
      t.decimal :longitude, precision: 10, scale: 2 

      t.timestamps
    end
  end
end
