class Produit < ActiveRecord::Base
	belongs_to :categorie
	belongs_to :pay
	has_many :detailcoms
end