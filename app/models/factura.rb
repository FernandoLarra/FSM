class Factura < ActiveRecord::Base
  validates :no_factura, presence: true
  validates :fecha_emision, presence: true
  validates :nit, presence: true
  validates :cantidad_producto, presence: true
  validates :nombre_producto, presence: true
  validates :precio_producto, presence: true
  validates :stock, presence: true
  validates :total, presence: true
  
  
  def get_no_factura
    self.no_factura
  end

  def get_fecha_emision
    self.fecha_emision
  end
  
  def get_nit
    self.nit
  end

  def get_total
    self.total
  end
end