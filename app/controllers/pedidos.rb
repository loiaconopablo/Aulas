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
    @pedido.aula = Aula.get(params[:aula_id])
    if @pedido.save
      flash[:success] = 'Reserva realizada'
      redirect '/pedidos/listar'
    else
      flash.now[:error] = 'Falta completar el campo "Materia"'
      render 'pedidos/new'
    end
  end
end
