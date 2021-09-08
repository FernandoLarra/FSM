class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre, :null => false
      t.string :apellidos, :null => false
      t.string :direccion
      t.string :telefono
      t.integer :nit, :null => false
      t.timestamps
    end
    add_index :clientes, :nit, :unique => true
  end
end
