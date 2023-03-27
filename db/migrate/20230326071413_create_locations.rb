class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.belongs_to :riders
      t.string :latitude 
      t.string :longitude

      t.timestamps
    end
  end
end
