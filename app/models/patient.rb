class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
end


# Une fois les attributs fixés, on s'attaque aux relations :

# Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
# Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
# Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa


# appointment 1 --- N  doctor

# appointment 1 ---- N patient

# Doctor N ----- N Patients


# en fin de creation insctruction faire un ```rails db:migrate```