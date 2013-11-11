migration 3, :add_estado_to_aulas do
  up do
    modify_table :aulas do
      add_column :estado, DataMapper::Property::Boolean,	:default  => false
    end
  end

  down do
    modify_table :aulas do
      drop_column :estado, DataMapper::Property::Boolean,	:default  => false
    end
  end
end
