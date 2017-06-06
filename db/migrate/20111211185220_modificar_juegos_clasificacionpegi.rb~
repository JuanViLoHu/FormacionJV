class ModificarJuegosClasificacionpegi < ActiveRecord::Migration
  def change	
    change_table :juegos do |t|
      t.references :clasificacion_pegis
      t.remove :ClasifPEGI
    end
  end
end
