class Producto < ActiveRecord::Base
  validates :serie, presence: true
  validates :nombre_producto, presence: true
  validates :precio, presence: true
  validates :cantidad, presence: true
  validates :marca, presence: true
  validates :fecha_caducidad, presence: true

  def get_serie
    self.serie
  end

  def get_nombre_producto
    self.nombre_producto
  end

  def get_peso
    self.peso
  end

  def get_precio
    self.precio
  end

  def get_marca
    self.marca
  end

  def get_cantidad
    self.cantidad
  end

  def get_fecha_caducidad
    self.fecha_caducidad
  end
end