Aulas::App.controllers :pedidos do

  get :listar do
    @aulas = Aula.all
    render 'pedidos/listado'
  end 
  
  get :confirmar do
    render 'pedidos/confirmar'
  end 

  get :new do
    @pedido = Reserva.new
    @pedido.aula = Aula.get(params[:aula_id])
    esta_reservada = params[:aula_estado]
    if (!esta_reservada)
			redirect 'pedidos/confirmar'
    else
      flash.now[:error] = 'El aula ya se encuentra reservada'
      render 'pedidos/listar' 
    end
  end

end
