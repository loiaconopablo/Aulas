Aulas::App.controllers :aulas do

  get :new do
    @aula = Aula.new
    render 'aulas/new'
  end

  post :create do
    @aula = Aula.new(params[:aula])
    @aula.owner = current_user
    if @aula.save
      flash[:success] = 'Aula creada'
      redirect '/job_offers/my'
    else
      flash.now[:error] = 'El nombre es obligatorio'
      render 'job_offers/new'
    end  
  end

end
