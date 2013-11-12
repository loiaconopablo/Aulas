Aulas::App.controllers :pedidos do

  get :listar do
    @aulas = Aula.all
    render 'pedidos/listado'
  end 
  
  get :new do
    @pedido = Reserva.new
    @pedido.aula = Aula.get(params[:aula_id])
    
    if not @pedido.aula.estaReservada?
      render 'pedidos/confirmar'
     else
       @aulas = Aula.all
       flash.now[:error] = 'El aula ya se encuentra reservada'
       render 'pedidos/listado'
    end
  end
    
  post :create do
    @pedido = Reserva.new(params[:pedido])
    @pedido.docente = current_user
    @pedido.aula = Aula.get(params[:aula_id])
    if @pedido.save
      flash[:success] = 'Reserva realizada'
      redirect '/pedidos/listar'
    else
      flash.now[:error] = 'Faltan completar el campo "Materia"'
      render 'pedidos/confirmar'
    end
  end
end
