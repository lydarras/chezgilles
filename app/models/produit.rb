class Produit < ActiveRecord::Base
	belongs_to :categorie
	belongs_to :pay
	has_many :detailcoms
	has_many :clients, through: :clients
end