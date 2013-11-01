
user = Admin.create(:email => 'admin@aulas.com',
									 :name => 'Administrador', 
									 :type => 'admin', 
									 :password => "admin")

profesor = Docente.create(:email => 'nico@gmail.com',
									 :name => 'Nico Paez', 
									 :type => 'profesor', 
									 :password => "nico")
