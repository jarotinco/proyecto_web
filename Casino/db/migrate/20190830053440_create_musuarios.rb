class CreateMusuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :musuarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :usuario
      t.string :password
      t.string :sala
      t.string :tipo

      t.timestamps
    end
  end
end
