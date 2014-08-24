class Usuario < ActiveRecord::Base
  validates :matricula, presence: true, uniqueness: true
  validates :tipo, presence: true
  has_many :fotocopium
  DIRETORIAS = [ "DIATINF", "DIACON", "DIAREN" ]
  USER_TYPES = [ "professor", "diretor", "grafica" ]
end
