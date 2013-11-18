migration 3, :create_reservas do
  up do
    create_table :reservas do
      column :id, Integer, :serial => true
      column :materia, DataMapper::Property::String, :length => 255
      column :observaciones, DataMapper::Property::String, :length => 255
      column :esta_Aceptada, DataMapper::Property::String
      column :aula_id, Integer
      column :user_id, Integer
    end
  end

  down do
    drop_table :reservas
  end
end
