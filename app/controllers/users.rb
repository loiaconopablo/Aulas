Aulas::App.controllers :users do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :newDocente, :map => '/registracion_docente' do
    @user = User.new
    render 'users/new_docente'
  end

  post :create do
    @user = User.new(params[:user])
    @user.type = params[:typeUser]
    @user.password= params[:defaultPass]  
    if @user.save
      flash[:success] = 'Docente creado'
      begin
      	Aulas::App.deliver(:notification, :email_notificacion_cuenta, @user)
      	redirect '/'
      rescue StandardError
  			flash.now[:error] = 'No se pudo enviar la notificacion al email registrado'
  			render 'users/new_docente'
			end	
    else
      flash.now[:error] = 'Completar todos los campos'
      render 'users/new_docente'
    end  
  end

  get :listarDocentes do
    @docentes = User.all(:type => "docente")
    render 'users/listarDocentes'
  end 


end
