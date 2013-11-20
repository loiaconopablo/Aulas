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
  	@reserva.update(:esta_Aceptada => "Aceptada")
    flash[:success] = 'Reserva Aceptada'
    begin
        Aulas::App.deliver(:notification, :email_reserva_aceptada, @reserva, @docente)
        flash[:success] = 'Reserva Aceptada. Notificacion enviada correctamente'
      rescue StandardError
        flash.now[:success] = 'Reserva Aceptada. No se pudo enviar la notificacion al email registrado'
    end 
  	redirect 'reservas/listar'
  end

  get :rechazar do
  	@reserva = Reserva.get(params[:reserva_id])
  	@reserva.update(:esta_Aceptada => "Rechazada")
  	redirect 'reservas/listar'
  end

  get :rechazarRestantes do
    #@reservasRestantes = Reserva.All(:aula = )
    end

end
