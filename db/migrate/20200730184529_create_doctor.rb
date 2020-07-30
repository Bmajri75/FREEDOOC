#$ rails generate migration CreateUsers et hop, 
# la migration comprendra déjà la ligne create_table :users 😎 

class CreateDoctor < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name # first_name qui sera un string 
      t.string :last_name # last_name qui sera un string etc...
      t.string :specialty
      t.string :zip_code

      t.timestamps  # timestamps Elles permettront de suivre automatiquement 
                    # (pour chaque entrée de la table) 
                    # la date et l'heure de création et de dernière mise à jour.
    end
  end
end


# en fin de creation insctruction faire un ```rails db:migrate```
