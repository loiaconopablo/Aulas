class Reserva
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :docente, String
	property :aula, String
	property :materia, String
	property :observaciones, String
  belongs_to :aula
	belongs_to :docente
	
	validates_presence_of :materia

end