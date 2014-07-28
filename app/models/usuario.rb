class Usuario < ActiveRecord::Base
  validates :matricula, presence: true, uniqueness: true
  validates :tipo, presence: true
  has_many :fotocopium
end
