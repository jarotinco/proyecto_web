class CreateAperturaBilletes < ActiveRecord::Migration[5.1]
  def change
    create_table :apertura_billetes do |t|
      t.date :fechab
      t.datetime :hora
      t.integer :nromaquina
      t.decimal :valorb
      t.integer :billetef
      t.decimal :totalb
      t.integer :totalf

      t.timestamps
    end
  end
end
