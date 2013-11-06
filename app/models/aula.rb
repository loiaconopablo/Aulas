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
	
	validates_presence_of :nombre
	validates_presence_of :capacidad

end


