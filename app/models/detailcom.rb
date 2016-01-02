class Detailcom < ActiveRecord::Base
  belongs_to :commande
  belongs_to :produit
end
