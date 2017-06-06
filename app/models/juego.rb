class Juego < ActiveRecord::Base
	validates :Titulo, :presence => true
end
