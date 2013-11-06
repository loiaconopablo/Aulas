require 'spec_helper'

describe Aulas do

	describe 'model' do

		subject { @aula = Aula.new }

		it { should respond_to( :id) }
		it { should respond_to( :nombre ) }
		it { should respond_to( :capacidad) }
		it { should respond_to( :proyector ) }
		it { should respond_to( :tipodepizarra ) }
		it { should respond_to( :computadoras ) }
		it { should respond_to( :tipodeaula ) }
		it { should respond_to( :observaciones ) }

	end

	
end
