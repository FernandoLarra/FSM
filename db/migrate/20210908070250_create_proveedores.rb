class CreateProveedores < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedores do |t|
      t.string :nombre, :null => false
      t.string :direccion
      t.string :telefono
      t.string :correo, :null => false
      t.timestamps
    end
    add_index :proveedores, :correo, :unique => true
  end
end
