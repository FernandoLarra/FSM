class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :serie, :null => false
      t.string :nombre_producto, :null => false
      t.string :peso, :null => false
      t.integer :precio, :null => false
      t.string :marca, :null => false
      t.integer :cantidad, :null => false
      t.date :fecha_caducidad
    end
    add_index :productos, :serie, :unique => true
  end
end
