class ChangeAttributToCommande < ActiveRecord::Migration
  def change
  	change_column :commandes, :datecom, :string
  end
end
