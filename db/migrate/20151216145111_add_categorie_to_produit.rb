class AddCategorieToProduit < ActiveRecord::Migration
  def change
  	add_column :produits, :categorie_id, :integer
  end
end
