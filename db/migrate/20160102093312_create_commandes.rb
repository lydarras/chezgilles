class CreateCommandes < ActiveRecord::Migration
  def change
    create_table :commandes do |t|
      t.belongs_to :client, index: true, foreign_key: true
      t.datetime :datecom
      t.string :etat
    end
  end
end
