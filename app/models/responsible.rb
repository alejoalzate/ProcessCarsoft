class Responsible < ActiveRecord::Base
  belongs_to :user
  has_many :area_centers
  attr_accessible :extension, :phone, :user_id, :name


  def self.responsible_ubicacion(responsible,area_center)
  	@ubicacion = responsible + " | " + area_center.name  + " | " +   area_center.center.name
  end

  def self.search(search)
    where("extension like '%#{search}%' or phone like '%#{search}%' ")
  end

  validates :extension, :presence  => { :message => "Por Favor ingrese una extensión" } , :length => { :maximum => 20, :message => "la extensión ingresada es demasiado larga"}        
	validates :phone, :presence  => { :message => "Por Favor ingrese un telefono" } , :length => { :maximum => 30, :message => "el telefono ingresado es demasiado largo"}         
end
