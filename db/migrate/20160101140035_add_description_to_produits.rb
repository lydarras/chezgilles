class AddDescriptionToProduits < ActiveRecord::Migration
  def change
  	add_column :produits, :description, :text
  end
end
