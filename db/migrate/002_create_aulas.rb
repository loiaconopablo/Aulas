migration 2, :create_aulas do
  up do
    create_table :aulas do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :capacidad, DataMapper::Property::Integer
      column :proyector, DataMapper::Property::Boolean, :default  => false
      column :tipoDePizarra, DataMapper::Property::String, :length => 255
      column :computadoras, DataMapper::Property::Integer
    end
  end

  down do
    drop_table :aulas
  end
end

