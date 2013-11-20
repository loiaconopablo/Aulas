class Reserva
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :materia, String
	property :observaciones, String
	property :esta_aceptada, String
	#estado en true->Aceptada false->Rechazada , null  => Pendiente
  	belongs_to :aula
	belongs_to :user
	
	validates_presence_of :materia
	
end
