class CreateClasificacionPegis < ActiveRecord::Migration
  def change
    create_table :clasificacion_pegis do |t|
      t.string :Clasificacion
      t.string :Descripcion

      t.timestamps
    end
  end
end
