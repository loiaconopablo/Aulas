require 'spec_helper'

describe Reserva do

	describe 'model' do

		subject { @reserva = Reserva.new }

		it { should respond_to( :id) }
		it { should respond_to( :materia ) }
		it { should respond_to( :observaciones) }
		it { should respond_to( :aula ) }
		it { should respond_to( :user ) }


	end

	
end
