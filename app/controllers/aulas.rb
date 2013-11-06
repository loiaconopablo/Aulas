Aulas::App.controllers :aulas do

  get :new do
    @aula = Aula.new
    render 'aulas/new'
  end

  get :listar do
    @aulas = Aula.all
    render 'aulas/listado'
  end 

  post :create do
    @aula = Aula.new(params[:aula])
    if @aula.save
      flash[:success] = 'Aula creada'
      redirect 'aulas/listar'
    else
      flash.now[:error] = 'Completar correctamente los campos obligatorios'
      render 'aulas/new'
    end  
  end

end

