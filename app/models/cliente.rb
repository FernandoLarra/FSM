class Cliente < ActiveRecord::Base
  validates :nit, presence: true
  validates :nombre, presence: true
  validates :telefono, presence: true

  def get_nombre
    self.nombre
  end

  def get_apellidos
    self.apellidos
  end

  def get_telefono
    self.telefono
  end

  def get_nit
    self.nit
  end
end