class Reserva
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :materia, String
	property :observaciones, String
  belongs_to :aula
	belongs_to :docente
	
	validates_presence_of :materia
	# validates_presence_of :aula
	# validates_presence_of :docente
end
