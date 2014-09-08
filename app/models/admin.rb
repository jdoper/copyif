class Admin < ActiveRecord::Base
	validates :senha, presence: true, uniqueness: true
end
