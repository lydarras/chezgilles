class Commande < ActiveRecord::Base
  belongs_to :client
  has_many :detailcoms
end
