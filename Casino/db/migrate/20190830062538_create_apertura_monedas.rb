class CreateAperturaMonedas < ActiveRecord::Migration[5.1]
  def change
    create_table :apertura_monedas do |t|
      t.date :fecham
      t.datetime :horam
      t.integer :nromaquinam
      t.decimal :valorm
      t.integer :monedaf
      t.decimal :totalm
      t.integer :totalfm

      t.timestamps
    end
  end
end
