class CreatePremioManuals < ActiveRecord::Migration[5.1]
  def change
    create_table :premio_manuals do |t|
      t.integer :nformato
      t.date :fecha
      t.string :maquina
      t.decimal :valor
      t.decimal :coninicial
      t.decimal :confinal
      t.integer :dni
      t.string :nomcliente
      t.string :apepaterno
      t.string :apematerno

      t.timestamps
    end
  end
end
