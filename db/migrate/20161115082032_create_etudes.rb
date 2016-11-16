class CreateEtudes < ActiveRecord::Migration[5.0]
  def change
    create_table :etudes do |t|
      t.string :title, null: false, default: "Intitulé"
      t.integer :level, null: false, default: 0
      t.string :school, null: false, default: "Nom de L'école"
    end
  end
end
