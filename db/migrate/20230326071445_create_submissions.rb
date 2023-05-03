class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.string :firstname
      t.string :lastname
      t.string :email_address 
      t.string :slogan_idea

      t.timestamps
    end
  end
end
