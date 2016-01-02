class AddPayToProduit < ActiveRecord::Migration
  def change
    add_reference :produits, :pay, index: true, foreign_key: true
  end
end
