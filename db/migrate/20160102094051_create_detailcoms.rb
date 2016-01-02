class CreateDetailcoms < ActiveRecord::Migration
  def change
    create_table :detailcoms do |t|
      t.belongs_to :commande, index: true, foreign_key: true
      t.belongs_to :produit, index: true, foreign_key: true
      t.integer :quantite
      t.float :prixunitaire
      t.float :prixvente

      t.timestamps null: false
    end
  end
end
