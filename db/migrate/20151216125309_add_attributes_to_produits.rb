class AddAttributesToProduits < ActiveRecord::Migration
  def change
  	add_column :produits, :prix, :integer
  	add_column :produits, :categorie_id, :integer
  end
end
