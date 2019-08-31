class CreateRecaudacions < ActiveRecord::Migration[5.1]
  def change
    create_table :recaudacions do |t|
      t.date :fechar
      t.datetime :horar
      t.integer :nromaquinar
      t.decimal :rellenoini
      t.decimal :valorr
      t.integer :monedafr
      t.decimal :rellenofin
      t.decimal :totalr
      t.integer :totalfr

      t.timestamps
    end
  end
end
