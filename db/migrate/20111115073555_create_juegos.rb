class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos do |t|
      t.string :Titulo
      t.string :Marca
      t.string :Plataforma
      t.text :ClasifPEGI
      t.text :Genero
      t.text :Subgenero
      t.text :SoporteDig

      t.timestamps
    end
  end
end
