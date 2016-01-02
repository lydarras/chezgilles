class ChangeAttributeToProduits < ActiveRecord::Migration
  def change
  	change_column :produits, :prix, :double
  end
end
