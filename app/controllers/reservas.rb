Aulas::App.controllers :reservas do

  get :listar do
  	@reservas = Reserva.all
  	render 'reservas/listado'
  end
  
  get :validate do
  	@reserva = Reserva.get(params[:reserva_id])
  	@aula = @reserva.aula
  	@docente = User.get(@reserva.user_id)
  	@aulaAModificar = Aula.get(@aula.id)
  	@obse = "Se reservo a nombre de "+@docente.name+" para la materia "+@reserva.materia
  	@aulaAModificar.update(:estado => true, :observaciones => @obse)
  	@reserva.destroy
  	redirect 'reservas/listar'
  end

end