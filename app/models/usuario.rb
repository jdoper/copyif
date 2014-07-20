class Usuario < ActiveRecord::Base
  validates :matricula, presence: true, uniqueness: true
  has_many :fotocopium
end
