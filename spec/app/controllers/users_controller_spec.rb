require 'spec_helper'

describe "UsersController" do

	describe 'get :register' do
		
	  it "should response ok" do
	  	Aulas::App.any_instance.should_receive(:render).with('users/new_docente')
	  	get '/registracion_profesor'
	    last_response.should be_ok
	  end

	  it 'should render users/new' do
	  	Aulas::App.any_instance.should_receive(:render).with('users/new_docente')
	  	get '/registracion_profesor'
	  end

	 end
	 
end
