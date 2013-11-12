class Aula
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :nombre, String
	property :capacidad, Integer
	property :proyector, Boolean
	property :tipodepizarra, String
	property :computadoras, Boolean
  	property :tipodeaula, String
	property :observaciones, String
	property :estado, Boolean
	#estado en true->Reservada false->Disponible , :default  => false
	has n, :reservas
	
	validates_presence_of :nombre
	validates_presence_of :capacidad

	def estaReservada?
		self.estado
	end

end


