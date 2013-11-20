Aulas::App.controllers :pedidos do

  get :listar do
    @aulas = Aula.all
    render 'pedidos/listado'
  end 
  
  get :new do
    @reserva = Reserva.new
    @reserva.aula = Aula.get(params[:aula_id])
    if not @reserva.aula.estaReservada?
      render 'pedidos/nuevo'
     else
       @aulas = Aula.all
       flash.now[:error] = 'El aula ya se encuentra reservada'
       render 'pedidos/listado'
    end
  end
    
  post :create do
    @pedido = Reserva.new(params[:reserva])
    @pedido.user = current_user
    @pedido.esta_Aceptada = "Pendiente"
    @pedido.aula = Aula.get(params[:aula_id])
    @admin = User.get(1)
    if @pedido.save
       begin
      	Aulas::App.deliver(:notification, :email_notificacion_admin, @pedido, @admin)
      	flash[:success] = 'Reserva realizada. Notificacion enviada correctamente'
      	redirect '/pedidos/listar'
      rescue StandardError
  			flash.now[:success] = 'Reserva realizada. No se pudo enviar la notificacion al email registrado'
				redirect '/pedidos/listar'
			end	
    else
      flash.now[:error] = 'Falta completar el campo "Materia"'
      @reserva = Reserva.new
      @reserva.aula = Aula.get(params[:aula_id])
      render 'pedidos/nuevo'
    end
  end
end
