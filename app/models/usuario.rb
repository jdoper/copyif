class Usuario < ActiveRecord::Base
  validates :matricula, presence: true, uniqueness: true
end
