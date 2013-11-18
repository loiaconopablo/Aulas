Aulas::App.controllers :reservas do

  get :listar do
    @reservas = Reserva.all
    render 'reservas/listado'
  end
  
  get :validate do

  end  
  
end
