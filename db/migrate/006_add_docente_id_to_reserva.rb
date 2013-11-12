migration 4, :add_docente_id_to_reserva do
  up do
    modify_table :reservas do
      add_column :docente_id, Integer
    end
  end

  down do
    modify_table :reservas do
      drop_column :docente_id
    end
  end
end