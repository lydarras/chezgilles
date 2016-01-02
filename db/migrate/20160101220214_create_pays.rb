class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
