class Guluca < ActiveRecord::Base
	validates :nombre, presence: true
	validates :correo, presence: true
end
