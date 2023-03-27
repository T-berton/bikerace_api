class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.belongs_to :riders
      t.string :email_address 
      t.string :slogan_idea

      t.timestamps
    end
  end
end
