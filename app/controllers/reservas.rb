Aulas::App.controllers :reservas do

  get :listar do
    @reservas = Reserva.all.sort_by {|reserva| reserva.aula.nombre}
  	render 'reservas/listado'
  end
  
  get :validate do
  	@reserva = Reserva.get(params[:reserva_id])
  	@aula = @reserva.aula
  	@docente = User.get(@reserva.user_id)
  	@aulaAModificar = Aula.get(@aula.id)
  	@obse = "Se reservo a nombre de "+@docente.name+" para la materia "+@reserva.materia
  	@aulaAModificar.update(:estado => true, :observaciones => @obse)
  	@reserva.update(:esta_aceptada => "Aceptada")
    begin
        Aulas::App.deliver(:notification, :email_reserva_aceptada, @reserva, @docente)
        flash[:success] = 'Reserva Aceptada. Notificacion enviada correctamente'
      rescue StandardError
        flash.now[:success] = 'Reserva Aceptada. No se pudo enviar la notificacion al email registrado'
    end 
  	@reservasRestantes = Reserva.all(:aula => @reserva.aula) & Reserva.all(:esta_aceptada => "Pendiente")
    @reservasRestantes.update(:esta_aceptada => "Rechazada")
    redirect 'reservas/listar'
  end

  get :rechazar do
  	@reserva = Reserva.get(params[:reserva_id])
  	@reserva.update(:esta_aceptada => "Rechazada")
    flash[:success] = 'Se ha rechazado la peticion'
  	redirect 'reservas/listar'
  end

end
