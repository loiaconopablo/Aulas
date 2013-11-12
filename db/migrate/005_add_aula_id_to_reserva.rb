migration 4, :add_aula_id_to_reserva do
  up do
    modify_table :reservas do
      add_column :aula_id, Integer
    end
  end

  down do
    modify_table :reservas do
      drop_column :aula_id
    end
  end
end
