migration 3, :create_reservas do
  up do
    create_table :reservas do
      column :id, Integer, :serial => true
      column :observaciones, DataMapper::Property::String, :length => 255
      column :materia, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :reservas
  end
end
