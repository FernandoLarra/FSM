class Proveedor < ActiveRecord::Base
  self.table_name = "proveedores"
  validates :nombre, presence: true
  validates :direccion, presence: true
  validates :telefono, presence: true
  validates :correo, presence: true
  validates_format_of :correo, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  def get_nombre
    self.nombre
  end

  def get_direccion
    self.direccion
  end

  def get_telefono
    self.telefono
  end

  def get_correo
    self.correo
  end

end