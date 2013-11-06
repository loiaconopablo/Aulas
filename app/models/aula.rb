class Aula
	include DataMapper::Resource

	# property <name>, <type>
	property :id, Serial
	property :nombre, String
	property :capacidad, Integer
	property :proyector, Boolean
	property :tipodepizarra, String
	property :computadoras, Integer
	
	validates_presence_of :nombre

end


