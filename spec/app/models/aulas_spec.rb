require 'spec_helper'

describe Aulas do

	describe 'model' do

		subject { @aula = Aula.new }

		it { should respond_to( :id) }
		it { should respond_to( :nombre ) }
		it { should respond_to( :capacidad) }
		it { should respond_to( :proyector ) }
		it { should respond_to( :tipoDePizarra ) }
		it { should respond_to( :computadoras ) }

	end

	
end
