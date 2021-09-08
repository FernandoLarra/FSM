class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.string :no_factura, :null => false
      t.string :fecha_emision, :null => false
      t.string :no_empleado, :null => false
      t.string :serie, :null => false
      t.string :nit, :null => false
      t.string :cantidad_producto,  :null => false
      t.string :precio_producto,  :null => false
      t.string :total, :null => false
      t.timestamps
    end
    add_index :facturas, :no_factura, :unique => true
  end
end
