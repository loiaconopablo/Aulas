
user = Admin.create(:email => 'admin@aulas.com',
									 :name => 'Administrador',
									 :lastname => 'Administrador',
									 :type => 'admin', 
									 :password => "admin")

profesor = Docente.create(:email => 'nico@gmail.com',
									 :name => 'Nico', 
									 :lastname => 'Paez',
									 :type => 'profesor', 
									 :password => "nico")
