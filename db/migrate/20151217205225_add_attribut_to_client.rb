class AddAttributToClient < ActiveRecord::Migration
  def change
  	add_column :clients, :prenom, :string
  	add_column :clients, :nom, :string
  	add_column :clients, :adresse, :string
  	add_column :clients, :numtel, :string
  end
end
