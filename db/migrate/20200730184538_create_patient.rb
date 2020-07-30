#rails generate migration CreatePatient

class CreatePatient < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name # first name en string 
      t.string :last_name # last name in string 

      t.timestamps # timestamp il s'agit de 2 colonnes qui porteront les intitulés 
                   # created_at et updated_at
    end
  end
end
