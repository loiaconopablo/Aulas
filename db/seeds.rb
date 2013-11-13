
user = Admin.create(:email => 'admin@aulas.com',
									 :name => 'Administrador',
									 :lastname => 'Administrador',
									 :type => 'admin', 
									 :password => "admin")

docenteDefault = Docente.create(:email => 'nico@gmail.com',
									 :name => 'Nico', 
									 :lastname => 'Paez',
									 :type => 'docente', 
									 :password => "nico")
									 
aula37b = Aula.create(:nombre => '37b',
											:estado => false,
											:capacidad => 20)
											
aula60 = Aula.create(:nombre => '60',
										:capacidad => 20,
										:estado => true)									 
